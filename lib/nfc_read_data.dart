import 'package:flutter/material.dart';
import 'package:flutter_nfc_sample/nfc_helpers/nfc_wrapper_view.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'dart:convert';

class NfcReadData extends StatefulWidget {
  NfcReadData({Key? key}) : super(key: key);

  @override
  State<NfcReadData> createState() => _NfcReadDataState();
}

class _NfcReadDataState extends State<NfcReadData> {
  Future<NfcTag?> _scannedTag = Future.value(null);
  bool _isScanning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: const [
          Icon(Icons.document_scanner_rounded),
          SizedBox(width: 10),
          Text('NFC Reading'),
        ],
      )),
      body: ListView(
        children: [
          GestureDetector(
              onTap: () => {
                    setState(() {
                      _isScanning = true;
                      getNfcData();
                    })
                  },
              child: NFCWrapperView(isScanning: _isScanning)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder(
              future: _scannedTag,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: readNdef(snapshot.data),
                  );
                } else {
                  return const Center(
                      child: Text(
                          'No data, tap on the NFC icon to start reading'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> readNdef(NfcTag tag) {
    //Lister les données du tag
    List<Widget> ndefWidgets = [];

    var tech = Ndef.from(tag);
    if (tech is Ndef) {
      final record = tech.cachedMessage!.records[0];
      if (record.typeNameFormat == NdefTypeNameFormat.nfcWellknown &&
          record.type.length == 1 &&
          record.type.first == 0x54) {
        // record type: NFC Wellknown Text
        final languageCodeLength = record.payload.first;
        final text =
            utf8.decode(record.payload.sublist(1 + languageCodeLength));
        ndefWidgets.add(ListTile(
          title: Text(text),
        ));
      }

      return ndefWidgets;
    } else {
      return [Text('No NDEF data found')];
    }
  }

  //Démarre la session de lecture NFC
  void getNfcData() async {
    bool isAvailable = await NfcManager.instance.isAvailable();

    if (isAvailable) {
      await NfcManager.instance.startSession(onError: (error) async {
        print(error);
        _scannedTag = Future.error(error);
      }, onDiscovered: (NfcTag tag) async {
        setState(() {
          _scannedTag = Future.value(tag);
          _isScanning = false;
        });
        NfcManager.instance.stopSession();
      });
    }
  }
}
