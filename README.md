# flutter_nfc_sample

A simple app that use NFC to read and write data.

## Getting Started

This project is a starting point for a Flutter application that uses NFC.


## Pre-requisites

You need to have a device that supports NFC. 

> You can check if your device supports NFC by going to Settings > About phone > NFC.

## Screenshots
![](Screenshot_Home.png)
![](Screenshot_Write.png)

## Description of files
* `📁 nfc_helpers` contains the code that is used to read and write NFC tags and also to display nfc data easily on the UI.
* `nfc_read_data.dart` contains example of code that is used to read NFC tags.
* `nfc_write_data.dart` contains example of code that is used to write NFC tags.

## Android Specific Setup
Add the `android.permission.NFC` permission to your `AndroidManifest.xml` file
```xml
<uses-permission android:name="android.permission.NFC" />
```

## iOS specific setup

On iOS, remember to add the Near Field Communication capability on the runner target of your project.

You need to add the following to your `Info.plist` file of the main runner target:

```xml
    <key>UIRequiredDeviceCapabilities</key>
	<array>
		<string>nfc</string>
	</array>
	<key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
	<array>
		<string>A0000002310100000000000000000000</string>
		<string>A0000002310200000000000000000000</string>
		<string>A0000002480300000000000000000000</string>
		<string>A00000006510</string>
		<string>A0000000651010</string>
		<string>315041592E5359532E4444463031</string>
		<string>325041592E5359532E4444463031</string>
		<string>44464D46412E44466172653234313031</string>
		<string>A00000000101</string>
		<string>A000000003000000</string>
		<string>A00000000300037561</string>
		<string>A00000000305076010</string>
		<string>A0000000031010</string>
		<string>A000000003101001</string>
		<string>A000000003101002</string>
		<string>A0000000032010</string>
		<string>A0000000032020</string>
		<string>A0000000033010</string>
		<string>A0000000034010</string>
		<string>A0000000035010</string>
		<string>A000000003534441</string>
		<string>A0000000035350</string>
		<string>A000000003535041</string>
		<string>A0000000036010</string>
		<string>A0000000036020</string>
		<string>A0000000038002</string>
		<string>A0000000038010</string>
		<string>A0000000039010</string>
		<string>A000000003999910</string>
		<string>A0000000040000</string>
		<string>A00000000401</string>
		<string>A0000000041010</string>
		<string>A00000000410101213</string>
		<string>A00000000410101215</string>
		<string>A0000000041010BB5449435301</string>
		<string>A0000000042010</string>
		<string>A0000000042203</string>
		<string>A0000000043010</string>
		<string>A0000000043060</string>
		<string>A000000004306001</string>
		<string>A0000000044010</string>
		<string>A0000000045010</string>
		<string>A0000000045555</string>
		<string>A0000000046000</string>
		<string>A0000000048002</string>
		<string>A0000000049999</string>
		<string>A0000000050001</string>
		<string>A0000000050002</string>
		<string>A0000000090001FF44FF1289</string>
		<string>A0000000101030</string>
		<string>A00000001800</string>
		<string>A0000000181001</string>
		<string>A000000018434D</string>
		<string>A000000018434D00</string>
		<string>A00000002401</string>
		<string>A000000025</string>
		<string>A0000000250000</string>
		<string>A00000002501</string>
		<string>A000000025010104</string>
		<string>A000000025010402</string>
		<string>A000000025010701</string>
		<string>A000000025010801</string>
		<string>A0000000291010</string>
		<string>A00000002945087510100000</string>
		<string>A00000002949034010100001</string>
		<string>A00000002949282010100000</string>
		<string>A000000029564182</string>
		<string>A00000003029057000AD13100101FF</string>
		<string>A0000000308000000000280101</string>
		<string>A0000000421010</string>
		<string>A0000000422010</string>
		<string>A0000000423010</string>
		<string>A0000000424010</string>
		<string>A0000000425010</string>
		<string>A0000000426010</string>
		<string>A00000005945430100</string>
		<string>A000000063504B43532D3135</string>
		<string>A0000000635741502D57494D</string>
		<string>A00000006510</string>
		<string>A0000000651010</string>
		<string>A00000006900</string>
		<string>A000000077010000021000000000003B</string>
		<string>A0000000790100</string>
		<string>A0000000790101</string>
		<string>A0000000790102</string>
		<string>A00000007901F0</string>
		<string>A00000007901F1</string>
		<string>A00000007901F2</string>
		<string>A0000000790200</string>
		<string>A0000000790201</string>
		<string>A00000007902FB</string>
		<string>A00000007902FD</string>
		<string>A00000007902FE</string>
		<string>A0000000790300</string>
		<string>A0000000791201</string>
		<string>A0000000791202</string>
		<string>A0000000871002FF49FF0589</string>
		<string>A00000008810200105C100</string>
		<string>A000000088102201034221</string>
		<string>A000000088102201034321</string>
		<string>A0000000960200</string>
		<string>A000000098</string>
		<string>A0000000980840</string>
		<string>A0000000980848</string>
		<string>A0000001110101</string>
		<string>A0000001160300</string>
		<string>A0000001166010</string>
		<string>A0000001166030</string>
		<string>A0000001169000</string>
		<string>A000000116A001</string>
		<string>A000000116DB00</string>
		<string>A000000118010000</string>
		<string>A000000118020000</string>
		<string>A000000118030000</string>
		<string>A000000118040000</string>
		<string>A0000001184543</string>
		<string>A000000118454E</string>
		<string>A0000001211010</string>
		<string>A0000001320001</string>
		<string>A0000001408001</string>
		<string>A0000001410001</string>
		<string>A0000001510000</string>
		<string>A00000015153504341534400</string>
		<string>A0000001523010</string>
		<string>A0000001524010</string>
		<string>A0000001544442</string>
		<string>A0000001570010</string>
		<string>A0000001570020</string>
		<string>A0000001570021</string>
		<string>A0000001570022</string>
		<string>A0000001570023</string>
		<string>A0000001570030</string>
		<string>A0000001570031</string>
		<string>A0000001570040</string>
		<string>A0000001570050</string>
		<string>A0000001570051</string>
		<string>A0000001570100</string>
		<string>A0000001570104</string>
		<string>A0000001570109</string>
		<string>A000000157010A</string>
		<string>A000000157010B</string>
		<string>A000000157010C</string>
		<string>A000000157010D</string>
		<string>A0000001574443</string>
		<string>A0000001574444</string>
		<string>A000000167413000FF</string>
		<string>A000000167413001</string>
		<string>A000000172950001</string>
		<string>A000000177504B43532D3135</string>
		<string>A0000001850002</string>
		<string>A0000001884443</string>
		<string>A0000002040000</string>
		<string>A0000002281010</string>
		<string>A0000002282010</string>
		<string>A00000022820101010</string>
		<string>A0000002310100000000000000000000</string>
		<string>A0000002310200000000000000000000</string>
		<string>A0000002480300000000000000000000</string>
		<string>A0000002471001</string>
		<string>A0000002472001</string>
		<string>A0000002771010</string>
		<string>A00000030600000000000000</string>
		<string>A000000308000010000100</string>
		<string>A00000031510100528</string>
		<string>A0000003156020</string>
		<string>A00000032301</string>
		<string>A0000003230101</string>
		<string>A0000003241010</string>
		<string>A000000333010101</string>
		<string>A000000333010102</string>
		<string>A000000333010103</string>
		<string>A000000333010106</string>
		<string>A000000333010108</string>
		<string>A000000337301000</string>
		<string>A000000337101000</string>
		<string>A000000337102000</string>
		<string>A000000337101001</string>
		<string>A000000337102001</string>
		<string>A000000337601001</string>
		<string>A0000003591010</string>
		<string>A0000003591010028001</string>
		<string>A00000035910100380</string>
		<string>A0000003660001</string>
		<string>A0000003660002</string>
		<string>A0000003710001</string>
		<string>A00000038410</string>
		<string>A00000038420</string>
		<string>A0000003964D66344D0002</string>
		<string>A00000039742544659</string>
		<string>A0000003974349445F0100</string>
		<string>A0000004271010</string>
		<string>A0000004320001</string>
		<string>A0000004360100</string>
		<string>A0000004391010</string>
		<string>A0000004540010</string>
		<string>A0000004540011</string>
		<string>A0000004762010</string>
		<string>A0000004763030</string>
		<string>A0000004766C</string>
		<string>A000000476A010</string>
		<string>A000000476A110</string>
		<string>A000000485</string>
		<string>A0000005241010</string>
		<string>A0000005271002</string>
		<string>A000000527200101</string>
		<string>A000000527210101</string>
		<string>A0000005591010FFFFFFFF8900000100</string>
		<string>A0000005591010FFFFFFFF8900000200</string>
		<string>A0000005591010FFFFFFFF8900000D00</string>
		<string>A0000005591010FFFFFFFF8900000E00</string>
		<string>A0000005591010FFFFFFFF8900000F00</string>
		<string>A0000005591010FFFFFFFF8900001000</string>
		<string>A00000061700</string>
		<string>A0000006200620</string>
		<string>A0000006581010</string>
		<string>A0000006581011</string>
		<string>A0000006582010</string>
		<string>A0000006723010</string>
		<string>A0000006723020</string>
		<string>A0000007705850</string>
		<string>A0000007790000</string>
		<string>B012345678</string>
		<string>D040000001000002</string>
		<string>D040000002000002</string>
		<string>D040000003000002</string>
		<string>D040000004000002</string>
		<string>D04000000B000002</string>
		<string>D04000000C000002</string>
		<string>D04000000D000002</string>
		<string>D040000013000001</string>
		<string>D040000013000001</string>
		<string>D040000013000002</string>
		<string>D040000013000002</string>
		<string>D040000014000001</string>
		<string>D040000015000001</string>
		<string>D040000015000001</string>
		<string>D0400000190001</string>
		<string>D0400000190002</string>
		<string>D0400000190003</string>
		<string>D0400000190004</string>
		<string>D0400000190010</string>
		<string>D268000001</string>
		<string>D276000005</string>
		<string>D276000005AA040360010410</string>
		<string>D276000005AA0503E00401</string>
		<string>D276000005AA0503E00501</string>
		<string>D276000005AA0503E0050101</string>
		<string>D276000005AB0503E0040101</string>
		<string>D27600002200000001</string>
		<string>D27600002200000002</string>
		<string>D27600002200000060</string>
		<string>D276000025</string>
		<string>D27600002545410100</string>
		<string>D27600002545500100</string>
		<string>D27600002547410100</string>
		<string>D276000060</string>
		<string>D276000118</string>
		<string>D2760001180101</string>
		<string>D27600012401</string>
		<string>D276000124010101FFFF000000010000</string>
		<string>D2760001240102000000000000010000</string>
		<string>D27600012402</string>
		<string>D2760001240200010000000000000000</string>
		<string>D4100000011010</string>
		<string>D5280050218002</string>
		<string>D5780000021010</string>
		<string>D7560000010101</string>
		<string>D7560000300101</string>
		<string>E80704007F00070302</string>
		<string>E82881C11702</string>
		<string>E828BD080F</string>
		<string>F0000000030001</string>
	</array>
	<key>NFCReaderUsageDescription</key>
	<string>We need to access to NFC Hardware in order to read/write your object tag</string>
	<key>com.apple.developer.nfc.readersession.felica.systemcodes</key>
	<array>
		<string>0003</string>
		<string>04D1</string>
		<string>8008</string>
		<string>80DE</string>
		<string>865E</string>
		<string>8592</string>
		<string>8B5D</string>
		<string>8FC1</string>
		<string>FE00</string>
	</array>
```

## Changer l'icone de l'app

Ajouter a la suite des dependences dans le `pubspec.yaml`:

```yaml=
  flutter_launcher_icons: ^0.13.1

flutter_icons:
  image_path: "assets/images/open.png" 
  android: true
  ios: true
```

Décommenter l'ajout d'assets pour définir l'icone dans le `pubspec.yaml`:
```yaml=
# To add assets to your application, add an assets section, like this:
assets:
- assets/images/open.png
```

Puis lancer

```shell=
flutter pub get
flutter pub run flutter_launcher_icons
```
