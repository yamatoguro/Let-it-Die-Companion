import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class RnDMaterial {
  final String name;
  final String url;
  final String urlFullImage;
  final int rarity;
  int quantity = 0;
  final SingleChildScrollView where;

  RnDMaterial({
    required this.name,
    required this.url,
    required this.urlFullImage,
    required this.rarity,
    required this.where,
  });
}

Map<String, List<RnDMaterial>> mats = {
  'aluminum': aluminum,
  'copper': copper,
  'iron': iron,
  'oil': oil,
  'wood': wood,
  'fiber': fiber,
  'tuber': tuber,
  'dod': dod,
  'we': we,
  // 'cw': cw,
  // 'milk': milk,
  // 'jackal': jackal,
};

// -- Linha de texto para link --
// InkWell(
//   onTap: () async {
//     Uri url =
//         Uri.parse('https://www.youtube.com/watch?v=clULfPIwigI');
//     if (await launchUrl(url)) {
//       await launchUrl(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   },
//   child: const Text(
//     'https://www.youtube.com/watch?v=clULfPIwigI',
//     style: TextStyle(
//       fontSize: 30,
//       color: Colors.blue,
//       decoration: TextDecoration.underline,
//     ),
//   ),
// ),

List<RnDMaterial> aluminum = [
  RnDMaterial(
    name: 'Aluminum Scraps',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d5/Aluminum1.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 1-Star Material, Aluminum Scraps will mainly appear in Max\'s Area (1-10F).'),
          Text(
              'Can be bought for 2000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 10000 KC / 2 Death Metals (for x5). Drops from Bronze Lost Bags.\n'),
          Text('Aluminum-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - WANOKI - EVERYDAY \n3F - MINEMACHI - MON \n3F - KIMO-MAGOME - TUE / SAT \n8F - NINO-SENZOKU - EVERYDAY - Conected to the main elevator \n14F - KAMI-UMAI - FRI \n19F - CHITOSE-MEI - EVERYDAY \n23F - HONKAWA - EVERYDAY \n27F - OE - THU \n30F - UTATSU - FRI \n'),
          Text(''),
          Text('EVERYDAY-material Floors \n',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - IMOKAWA-CHO - EVERYDAY \n3F - KAMI-IKEDOI - EVERYDAY \n5F - SOKAI - THU \n6F - MEKAROKU-GO - EVERYDAY \n7F - REGASHI-KOYA - THU \n9F - YONEGUCHI - EVERYDAY \n'),
          Text(''),
          Text('Gyaku-Funsha \n',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n5F - DENDEN-CHOFU - TUE / THU / SAT \n7F - MEGASHI-KOYA - MON \n9F - YONEGUCHI - EVERYDAY \nSHOP: 2000 KC \n'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/54/Aluminum_Scraps.jpg/revision/latest?cb=20181111000622',
  ),
  RnDMaterial(
    name: 'Aluminum Can',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/0d/Aluminum2.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 2-Star Material, Aluminum Cans will mainly appear in Jackson\'s Area (11-20F).'),
          Text(
              'Can be bought for 4000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 15000 KC / 3 Death Metals (for x5). Drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Aluminum-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - WANOKI - EVERYDAY \n3F - MINEMACHI - MON \n3F - KIMO-MAGOME - TUE / SAT \n8F - NIKO-SENZOKU - EVERYDAY - Conected to the main elevator \n14F - KAMI-UMAI - FRI \n19F - CHITOSE-MEI - EVERYDAY \n23F - HONKAWA - EVERYDAY \n27F - OE - THU \n30F - UTATSU - FRI \n33F - KUROME - TUE / SAT \n34F - TAKAYAMA - THU \n35F - SHINA-YAMA - EVERYDAY \n37F - ATAGI - MON \n38F - EBATA - EVERYDAY'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '11F - NOKEJIRI - EVERYDAY \n12F - SEYANE - EVERYDAY \n13F - KAMOTO - EVERYDAY \n13F - MOMOHARA - EVERYDAY - Conected to the main elevator \n16F - KISUYAMA - THU \n18F - TEMO-UMA - EVERYDAY \n18F - TATA - EVERYDAY \n19F - DAIDA - EVERYDAY - Conected to the main elevator \n19F - HIBIKI - TUE / WED / THU / FRI / SAT / SUN \n19F - MEKAMACHI - MON \n20F - MONEGI - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN \n17F - NUTAKOEN - MON / TUE / THU / FRI / SAT \nSHOP: 4000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/97/Aluminum_Can.jpg/revision/latest?cb=20181111005639',
  ),
  RnDMaterial(
    name: 'Aluminum Engine Part',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/02/Aluminum3.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 3-Star Material, Aluminum Engine Part will mainly appear in Crowley\'s Area (21-30F).'),
          Text(
              'Can be bought for 6000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metals (for x5). Drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Aluminum-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '14F - KAMI-UMAI - FRI \n19F - CHITOSE-MEI - EVERYDAY \n23F - HONKAWA - EVERYDAY \n27F - OE - THU \n30F - UTATSU - FRI \n33F - KUROME - TUE / SAT \n34F - TAKAYAMA - THU \n35F - SHINA-YAMA - EVERYDAY \n37F - ATAGI - MON \n38F - EBATA - EVERYDAY \n43F - SEYA - EVERYDAY \n44F - SHUJIMA - EVERYDAY \n46F - KOUTOU - EVERYDAY \n46F - FURUJIYA - EVERYDAY \n47F - SAMINO - EVERYDAY - Conected to the main elevator \n48F - CHIKO-MATSU - EVERYDAY \n48F - JUSENJU - EVERYDAY - Conected to the main elevator'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '21F - AKAMI - EVERYDAY - Conected to the main elevator \n21F - ARIGURE - EVERYDAY \n22F - KAWABE - EVERYDAY \n22F - TOMIYAMA - THU \n25F - KANIE - EVERYDAY - Conected to the main elevator \n27F - KINOE - THU \n27F - SHICHI-FUGU - MON \n27F - KUROKAWA - WED / FRI / SUN \n28F - HYAKKOKU - EVERYDAY \n28F - FUMIBANA - THU \n29F - HENKE - THU \n30F - TOWADA - EVERYDAY \n30F - YOKOZUNA - TUE / SAT'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '24F - MORIBA - EVERYDAY \n27F - DAIMON-MACHI - TUE / SAT \n27F - YUKIYOSHI - WED / FRI / SUN \n29F - TEMAE-JIMA - MON \n30F - HIKIAGE - THU \nSHOP: 6000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/dd/Aluminum_Engine_Part.jpg/revision/latest?cb=20181111011736',
  ),
  RnDMaterial(
    name: 'Pure Aluminum',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/8f/Aluminum4.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 4-Star Material, Pure Aluminum will mainly appear in Gunkanyama\'s Area (31-40F). Continues appearing until 100F in Tengoku.'),
          Text(
              'Can be bought for 8000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 5000 KC / 1 Death Metal (for x1) or 20000 KC / 4 Death Metals (for x5). Drops from Silver / Gold Lost Bags.\n'),
          Text('Aluminum-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '23F - HONKAWA - EVERYDAY \n27F - OE - THU \n30F - UTATSU - FRI \n33F - KUROME - TUE / SAT \n34F - TAKAYAMA - THU \n35F - SHINA-YAMA - EVERYDAY \n37F - ATAGI - MON \n38F - EBATA - EVERYDAY \n43F - SEYA - EVERYDAY \n44F - SHUJIMA - EVERYDAY \n46F - KOUTOU - EVERYDAY \n46F - FURUJIYA - EVERYDAY \n47F - SAMINO - EVERYDAY - Conected to the main elevator \n48F - CHIKO-MATSU - EVERYDAY \n48F - JUSENJU - EVERYDAY - Conected to the main elevator \n56F+ - TENGOKU 56F, 63F, 71F, 78F,86F, 93F'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '31F - OBARA - EVERYDAY - Conected to the main elevator \n33F - TOGOSE - EVERYDAY - Conected to the main elevator \n35F - NAKAEDA - THU \n36F - YATSUO - EVERYDAY - Conected to the main elevator \n37F - HIROMATSU - EVERYDAY - Conected to the main elevator'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '27F - YUKIYOSHI - WED / FRI / SUN \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 8000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/e/ee/Pure_Aluminum.jpg/revision/latest?cb=20181111012813',
  ),
  RnDMaterial(
    name: 'Aluminum EVERYDAYoy 7075',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/f1/Aluminum5.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 5-Star Material, Aluminum EVERYDAYoy 7075 mainly appears above 41F+, in Battle To The Top and Tengoku. Rarely appears on Aluminum-specific floors in Gunkanyama\'s Area (31-40F).'),
          Text(
              'Can be bought for 10000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 5000 KC / 1 Death Metal (for x1) or 20000 KC / 4 Death Metals (for x5). Drops from Gold Lost Bags.\n'),
          Text('Aluminum-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '30F - UTATSU - FRI \n33F - KUROME - TUE / SAT \n34F - TAKAYAMA - THU \n35F - SHINA-YAMA - EVERYDAY \n37F - ATAGI - MON \n38F - EBATA - EVERYDAY \n43F - SEYA - EVERYDAY \n44F - SHUJIMA - EVERYDAY \n46F - KOUTOU - EVERYDAY \n46F - FURUJIYA - EVERYDAY \n47F - SAMINO - EVERYDAY - Conected to the main elevator \n48F - CHIKO-MATSU - EVERYDAY \n48F - JUSENJU - EVERYDAY - Conected to the main elevator \n56F+ - TENGOKU \n56F, 63F, 71F, 78F, \n86F, 93F, 101F, 108F, \n116F, 123F, 131F, 138F, \n146F, 153F, 161F, 168F, \n176F, 183F, 191F, 198F, \n206F, 213F, 221F, 228F, \n236F, 243F, 251F, 258F, \n266F, 273F, 281F, 288F, \n296F, 303F, 311F, 318F, \n326F, 333F, 341F, 348F'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '42F - WADACHI - EVERYDAY \n44F - MAYARI - EVERYDAY \n45F - DOAME - EVERYDAY - Conected to the main elevator \n48F - HIBIKI - EVERYDAY \n48F - TATSUMATSU - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '27F - YUKIYOSHI - WED / FRI / SUN \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 10000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a3/Aluminum_EVERYDAYoy_7075.jpg/revision/latest?cb=20181111020020',
  ),
  RnDMaterial(
    name: 'Aluminum EVERYDAYoy 9048',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/7b/Aluminum6.png/revision/latest',
    rarity: 6,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 6-Star Material, Aluminum EVERYDAYoy 9048 mainly appears above 41F+, on Aluminum-specific floors in Battle To The Top and Tengoku.'),
          Text(
              'Can be bought for 1500 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 15000 KC / 3 Death Metal (for x1) or 60000 KC / 12 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Aluminum-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '43F - SEYA - EVERYDAY \n44F - SHUJIMA - EVERYDAY \n46F - KOUTOU - EVERYDAY \n46F - FURUJIYA - EVERYDAY \n47F - SAMINO - EVERYDAY - Conected to the main elevator \n48F - CHIKO-MATSU - EVERYDAY \n48F - JUSENJU - EVERYDAY - Conected to the main elevator \n56F+ - TENGOKU \n56F, 63F, 71F, 78F, \n86F, 93F, 101F, 108F, \n116F, 123F, 131F, 138F, \n146F, 153F, 161F, 168F, \n176F, 183F, 191F, 198F, \n206F, 213F, 221F, 228F, \n236F, 243F, 251F, 258F, \n266F, 273F, 281F, 288F, \n296F, 303F, 311F, 318F, \n326F, 333F, 341F, 348F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/53/Aluminum_EVERYDAYoy_9048.jpg/revision/latest?cb=20181111021649',
  ),
  RnDMaterial(
    name: 'Aluminum EVERYDAYoy 9050',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b8/Aluminum7.png/revision/latest',
    rarity: 7,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Aluminum EVERYDAYoy 9050 only appears on Aluminum-specific floors in Tengoku. It becomes more common above 100F.'),
          Text(
              'Can be bought for BL.png 2000 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metal (for x1) or 80000 KC / 16 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Aluminum-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '56F+ - TENGOKU \n56F, 63F, 71F, 78F, \n86F, 93F, 101F, 108F, \n116F, 123F, 131F, 138F, \n146F, 153F, 161F, 168F, \n176F, 183F, 191F, 198F, \n206F, 213F, 221F, 228F, \n236F, 243F, 251F, 258F, \n266F, 273F, 281F, 288F, \n296F, 303F, 311F, 318F, \n326F, 333F, 341F, 348F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/08/Aluminum_EVERYDAYoy_9050.jpg/revision/latest?cb=20181111022709',
  ),
  RnDMaterial(
    name: 'Aluminum EVERYDAYoy 9051',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/db/Aluminum8.png/revision/latest',
    rarity: 8,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Aluminum EVERYDAYoy 9051 can rarely appear in Tengoku on Aluminum-specific floors above 80F.'),
          Text(
              'May also be bought once-per-day in the Bloodnium Exchange for 2500 Bloodnium.\n'),
          Text('Aluminum-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '86F+ - TENGOKU \n86F, 93F, 101F, 108F, \n116F, 123F, 131F, 138F, \n146F, 153F, 161F, 168F, \n176F, 183F, 191F, 198F, \n206F, 213F, 221F, 228F, \n236F, 243F, 251F, 258F, \n266F, 273F, 281F, 288F, \n296F, 303F, 311F, 318F, \n326F, 333F, 341F, 348F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/64/Aluminum_EVERYDAYoy_9051.jpg/revision/latest?cb=20181129150501',
  ),
];

List<RnDMaterial> copper = [
  RnDMaterial(
    name: 'Clump of Copper Scraps',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/bb/Copper1.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 1-Star Material, Clump of Copper Scraps will mainly appear in Max\'s Area (1-10F).'),
          Text(
              'Can be bought for 2000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 10000 KC / 2 Death Metals (for x5). Drops from Bronze Lost Bags.\n'),
          Text('Copper-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '5F - MOKA-IKEGAMI - TUE / SAT \n6F - HEIMO-JIMA - TUE / SAT \n7F - GOSHI-MAGOME - TUE / SAT \n9F - NASHIYOGUCHI - EVERYDAY - Conected to the main elevator \n15F - UGE - EVERYDAY \n20F - NORA - EVERYDAY \n25F - FURU-IWABA - MON \n26F - OSHIMI - EVERYDAY \n27F - DOTEDORI - TUE / SAT \n29F - HENKE - THU \n30F - HIKIAGE - THU'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - IMOKAWA-CHO - EVERYDAY \n3F - KAMI-IKEDOI - EVERYDAY \n5F - SOKAI - THU \n6F - MEKAROKU-GO - EVERYDAY \n7F - REGASHI-KOYA - THU \n9F - YONEGUCHI - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n5F - DENDEN-CHOFU - TUE / THU / SAT \n7F - MEGASHI-KOYA - MON \n9F - YONEGUCHI - EVERYDAY \nSHOP: 2000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/6f/Clump_of_Copper_Scraps.jpg/revision/latest?cb=20181111000919',
  ),
  RnDMaterial(
    name: 'Piece of Broken Copperware',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a1/Copper2.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 2-Star Material, Piece of Broken Copperware will mainly appear in Jackson\'s Area (11-20F).'),
          Text(
              'Can be bought for 4000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 15000 KC / 3 Death Metals (for x5). Drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Copper-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '5F - MOKA-IKEGAMI - TUE / SAT \n6F - HEIMO-JIMA - TUE / SAT \n7F - GOSHI-MAGOME - TUE / SAT \n9F - NASHIYOGUCHI - EVERYDAY - Conected to the main elevator \n15F - UGE - EVERYDAY \n20F - NORA - EVERYDAY \n25F - FURU-IWABA - MON \n26F - OSHIMI - EVERYDAY \n27F - DOTEDORI - TUE / SAT \n29F - HENKE - THU \n30F - HIKIAGE - THU \n32F - OSUKI - EVERYDAY \n34F - NAGAZAKA - MON \n36F - HIRANUMA - EVERYDAY \n38F - JIYU-TOGE - TUE / SAT \n39F - MIKETA - THU'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '11F - NOKEJIRI - EVERYDAY \n12F - SEYANE - EVERYDAY \n13F - KAMOTO - EVERYDAY - Conected to the main elevator \n13F - MOMOHARA - EVERYDAY \n16F - KISUYAMA - THU \n18F - TEMO-UMA - EVERYDAY \n18F - TATA - EVERYDAY \n19F - DAIDA - EVERYDAY - Conected to the main elevator \n19F - HIBIKI - TUE / WED / THU / FRI / SAT / SUN \n19F - MEKAMACHI - MON \n20F - MONEGI - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN \n17F - NUTAKOEN - MON / TUE / THU / FRI / SAT \nSHOP: 4000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/2b/Piece_of_Broken_Copperware.jpg/revision/latest?cb=20181111010106',
  ),
  RnDMaterial(
    name: 'Copper Wire Mountain',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b9/Copper3.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 3-Star Material, Copper Wire Mountain will mainly appear in Crowley\'s Area (21-30F).'),
          Text(
              'Can be bought for 6000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metals (for x5). Drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Copper-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '15F - UGE - EVERYDAY \n20F - NORA - EVERYDAY \n25F - FURU-IWABA - MON \n26F - OSHIMI - EVERYDAY \n27F - DOTEDORI - TUE / SAT \n29F - HENKE - THU \n30F - HIKIAGE - THU \n32F - OSUKI - EVERYDAY \n34F - NAGAZAKA - MON \n36F - HIRANUMA - EVERYDAY \n38F - JIYU-TOGE - TUE / SAT \n39F - MIKETA - THU \n47F - ARATADEN - EVERYDAY \n47F - HAMA-NUSHIKA - EVERYDAY \n50F - NAKA-WARA - EVERYDAY'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '21F - AKAMI - EVERYDAY - Conected to the main elevator \n21F - ARIGURE - EVERYDAY \n22F - KAWABE - EVERYDAY \n22F - TOMIYAMA - THU \n25F - KANIE - EVERYDAY - Conected to the main elevator \n27F - KINOE - THU \n27F - SHICHI-FUGU - MON \n27F - KUROKAWA - WED / FRI / SUN \n28F - HYAKKOKU - EVERYDAY \n28F - FUMIBANA - THU \n29F - HENKE - THU \n30F - TOWADA - EVERYDAY \n30F - YOKOZUNA - TUE / SAT'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '24F - MORIBA - EVERYDAY \n27F - DAIMON-MACHI - TUE / SAT \n27F - YUKIYOSHI - WED / FRI / SUN \n29F - TEMAE-JIMA - MON \n30F - HIKIAGE - THU \nSHOP: 6000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/da/Copper_Wire_Mountain.jpg/revision/latest?cb=20181111011915',
  ),
  RnDMaterial(
    name: 'Pure Copper',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/83/Copper4.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 4-Star Material, Pure Copper will mainly appear in Gunkanyama\'s Area (31-40F). Continues appearing until 100F in Tengoku.'),
          Text(
              'Can be bought for 8000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 5000 KC / 1 Death Metal (for x1) or 20000 KC / 4 Death Metals (for x5). Drops from Silver / Gold Lost Bags.\n'),
          Text('Copper-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '25F - FURU-IWABA - MON \n26F - OSHIMI - EVERYDAY \n27F - DOTEDORI - TUE / SAT \n29F - HENKE - THU \n30F - HIKIAGE - THU \n32F - OSUKI - EVERYDAY \n34F - NAGAZAKA - MON \n36F - HIRANUMA - EVERYDAY \n38F - JIYU-TOGE - TUE / SAT \n39F - MIKETA - THU \n47F - ARATADEN - EVERYDAY \n47F - HAMA-NUSHIKA - EVERYDAY \n50F - NAKA-WARA - EVERYDAY \n58F+ - TENGOKU \n58F, 66F, 73F, 81F, \n88F, 96F'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '31F - OBARA - EVERYDAY - Conected to the main elevator \n33F - TOGOSE - EVERYDAY - Conected to the main elevator \n35F - NAKAEDA - THU \n36F - YATSUO - EVERYDAY - Conected to the main elevator \n37F - HIROMATSU - EVERYDAY - Conected to the main elevator'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '27F - YUKIYOSHI - WED / FRI / SUN \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 8000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/6e/Pure_Copper.jpg/revision/latest?cb=20181111013053',
  ),
  RnDMaterial(
    name: 'Oxygen-free Copper',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/67/Copper5.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 5-Star Material, Oxygen-free Copper mainly appears above 41F+, in Battle To The Top and Tengoku. Rarely appears on Copper-specific floors in Gunkanyama\'s Area (31-40F).'),
          Text(
              'Can be bought for 10000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 5000 KC / 1 Death Metal (for x1) or 20000 KC / 4 Death Metal (for x5). Drops from Gold Lost Bags.\n'),
          Text('Copper-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '32F - OSUKI - EVERYDAY \n34F - NAGAZAKA - MON \n36F - HIRANUMA - EVERYDAY \n38F - JIYU-TOGE - TUE / SAT \n39F - MIKETA - THU \n47F - ARATADEN - EVERYDAY \n47F - HAMA-NUSHIKA - EVERYDAY \n50F - NAKA-WARA - EVERYDAY \n58F+ - TENGOKU \n58F, 66F, 73F, 81F, \n88F, 96F, 103F, 111F, \n118F, 126F, 133F, 141F, \n148F, 156F, 163F, 171F, \n178F, 186F, 193F, 201F, \n208F, 216F, 223F, 231F, \n238F, 246F, 253F, 261F, \n268F, 276F, 283F, 291F, \n298F, 306F, 313F, 321F, \n328F, 336F, 343F, 351F'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '42F - WADACHI - EVERYDAY \n44F - MAYARI - EVERYDAY \n45F - DOAME - EVERYDAY - Conected to the main elevator \n48F - HIBIKI - EVERYDAY \n48F - TATSUMATSU - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '27F - YUKIYOSHI - WED / FRI / SUN \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 10000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/25/Oxygen-free_Copper.jpg/revision/latest?cb=20181111020133',
  ),
  RnDMaterial(
    name: 'Beryllium Copper',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/72/Copper6.png/revision/latest',
    rarity: 6,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 6-Star Material, Beryllium Copper mainly appears above 41F+, on Copper-specific floors in Battle To The Top and Tengoku.'),
          Text(
              'Can be bought for 1500 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 15000 KC / 3 Death Metals (for x1) or 60000 KC / 12 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Copper-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '47F - ARATADEN - EVERYDAY \n47F - HAMA-NUSHIKA - EVERYDAY \n50F - NAKA-WARA - EVERYDAY \n58F+ - TENGOKU \n58F, 66F, 73F, 81F, \n88F, 96F, 103F, 111F, \n118F, 126F, 133F, 141F, \n148F, 156F, 163F, 171F, \n178F, 186F, 193F, 201F, \n208F, 216F, 223F, 231F, \n238F, 246F, 253F, 261F, \n268F, 276F, 283F, 291F, \n298F, 306F, 313F, 321F, \n328F, 336F, 343F, 351F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/76/Beryllium_Copper.jpg/revision/latest?cb=20181111021841',
  ),
  RnDMaterial(
    name: 'Corinthian Bronze',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/32/Copper7.png/revision/latest',
    rarity: 7,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Corinthian Bronze only appears on Copper-specific floors in Tengoku. It becomes more common above 100F.'),
          Text(
              'Can be bought for 2000 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metals (for x1) or 80000 KC / 16 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Copper-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '58F+ - TENGOKU \n58F, 66F, 73F, 81F, \n88F, 96F, 103F, 111F, \n118F, 126F, 133F, 141F, \n148F, 156F, 163F, 171F, \n178F, 186F, 193F, 201F, \n208F, 216F, 223F, 231F, \n238F, 246F, 253F, 261F, \n268F, 276F, 283F, 291F, \n298F, 306F, 313F, 321F, \n328F, 336F, 343F, 351F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/01/Corinthian_Bronze.jpg/revision/latest?cb=20181111022918',
  ),
  RnDMaterial(
    name: 'Orichalcum',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/1d/Copper8.png/revision/latest',
    rarity: 8,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Orichalcum can rarely appear in Tengoku on Copper-specific floors above 80F.'),
          Text(
              'May also be bought once-per-day in the Bloodnium Exchange for 2500 Bloodnium.\n'),
          Text('Copper-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '81F+ - TENGOKU \n81F, 88F, 96F, 103F, \n111F, 118F, 126F, 133F, \n141F, 148F, 156F, 163F, \n171F, 178F, 186F, 193F, \n201F, 208F, 216F, 223F, \n231F, 238F, 246F, 253F, \n261F, 268F, 276F, 283F, \n291F, 298F, 306F, 313F, \n321F, 328F, 336F, 343F, \n351F',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/cf/Orichalcum.jpg/revision/latest?cb=20181129150522',
  ),
];

List<RnDMaterial> iron = [
  RnDMaterial(
    name: 'Iron Scraps',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/dc/Iron1.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 1-Star Material, Iron Scraps will mainly appear in Max\'s Area (1-10F).'),
          Text(
              'Can be bought for 2000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 10000 KC / 2 Death Metal (for x5). Drops from Bronze Lost Bags.\n'),
          Text('Iron-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - SOTOSENZOKU - THU \n3F - METAKOJIYA - THU \n4F - MANNO - THU \n4F - TAGAHARA - EVERYDAY - Conected to the main elevator \n6F - MOKA-MAGOME - EVERYDAY - Conected to the main elevator \n13F - NONOKURA - FRI \n14F - TAKOYA - FRI \n14F - UKISAWA - TUE / SAT \n15F - USOGAYA - EVERYDAY \n18F - BO-TSUTSUMI - MON \n22F - TOYOKAWA - TUE / SAT \n24F - SUMIKIYO - EVERYDAY \n25F - FUGAMI - TUE / SAT \n29F - TATEKAWA - MON \n29F - AOTOBASHI - THU \n29F - HASHIDAKA - EVERYDAY'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - IMOKAWA-CHO - EVERYDAY \n3F - KAMI-IKEDOI - EVERYDAY \n5F - SOKAI - THU \n6F - MEKAROKU-GO - EVERYDAY \n7F - REGASHI-KOYA - THU \n9F - YONEGUCHI - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n5F - DENDEN-CHOFU - TUE / THU / SAT \n7F - MEGASHI-KOYA - MON \n9F - YONEGUCHI - EVERYDAY \nSHOP: 2000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/44/Iron_Scraps.jpg/revision/latest?cb=20181110215517',
  ),
  RnDMaterial(
    name: 'Wire Mountain',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/7b/Iron2.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 2-Star Material, Wire Mountain will mainly appear in Jackson\'s Area (11-20F).'),
          Text(
              'Can be bought for 4000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 15000 KC / 3 Death Metals (for x5). Drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Iron-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - SOTOSENZOKU - THU \n3F - METAKOJIYA - THU \n4F - MANNO - THU \n4F - TAGAHARA - EVERYDAY - Conected to the main elevator \n6F - MOKA-MAGOME - EVERYDAY - Conected to the main elevator \n13F - NONOKURA - FRI \n14F - TAKOYA - FRI \n14F - UKISAWA - TUE / SAT \n15F - USOGAYA - EVERYDAY \n18F - BO-TSUTSUMI - MON \n22F - TOYOKAWA - TUE / SAT \n24F - SUMIKIYO - EVERYDAY \n25F - FUGAMI - TUE / SAT \n29F - TATEKAWA - MON \n29F - AOTOBASHI - THU \n29F - HASHIDAKA - EVERYDAY \n32F - KOSHI-YAMA - EVERYDAY \n33F - MIRAIGAOKA - THU \n34F - OTANI-YAMA - WED / FRI / SUN \n35F - KOMADA - TUE / SAT \n35F - WAKABA - EVERYDAY \n37F - MOGURO - WED / FRI / SUN \n39F - SHINKAWA - MON \n39F - NAKASAKI - EVERYDAY - Conected to the main elevator'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '11F - NOKEJIRI - EVERYDAY \n12F - SEYANE - EVERYDAY \n13F - KAMOTO - EVERYDAY - Conected to the main elevator \n13F - MOMOHARA - EVERYDAY \n16F - KISUYAMA - THU \n18F - TEMO-UMA - EVERYDAY \n18F - TATA - EVERYDAY \n19F - DAIDA - EVERYDAY - Conected to the main elevator \n19F - HIBIKI - TUE / WED / THU / FRI / SAT / SUN \n19F - MEKAMACHI - MON \n20F - MONEGI - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN \n17F - NUTAKOEN - MON / TUE / THU / FRI / SAT \nSHOP: 4000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/c2/Wire_Mountain.jpg/revision/latest?cb=20181111004413',
  ),
  RnDMaterial(
    name: 'Mass of Iron Bolts',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/aa/Iron3.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 3-Star Material, Mass of Iron Bolts will mainly appear in Crowley\'s Area (21-30F).'),
          Text(
              'Can be bought for 6000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metal (for x5). Drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Iron-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '13F - NONOKURA - FRI \n14F - TAKOYA - FRI \n14F - UKISAWA - TUE / SAT \n15F - USOGAYA - EVERYDAY \n18F - BO-TSUTSUMI - MON \n22F - TOYOKAWA - TUE / SAT \n24F - SUMIKIYO - EVERYDAY \n25F - FUGAMI - TUE / SAT \n29F - TATEKAWA - MON \n29F - AOTOBASHI - THU \n29F - HASHIDAKA - EVERYDAY \n32F - KOSHI-YAMA - EVERYDAY \n33F - MIRAIGAOKA - THU \n34F - OTANI-YAMA - WED / FRI / SUN \n35F - KOMADA - TUE / SAT \n35F - WAKABA - EVERYDAY \n37F - MOGURO - WED / FRI / SUN \n39F - SHINKAWA - MON \n39F - NAKASAKI - EVERYDAY - Conected to the main elevator \n45F - GIOU - EVERYDAY \n45F - KINO - EVERYDAY \n45F - OTAYA - EVERYDAY \n46F - TAHEI - EVERYDAY \n49F - NERIKOU - EVERYDAY'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '21F - AKAMI - EVERYDAY - Conected to the main elevator \n21F - ARIGURE - EVERYDAY \n22F - KAWABE - EVERYDAY \n22F - TOMIYAMA - THU \n25F - KANIE - EVERYDAY - Conected to the main elevator \n27F - KINOE - THU \n27F - SHICHI-FUGU - MON \n27F - KUROKAWA - WED / FRI / SUN \n28F - HYAKKOKU - EVERYDAY \n28F - FUMIBANA - THU \n29F - HENKE - THU \n30F - TOWADA - EVERYDAY \n30F - YOKOZUNA - TUE / SAT'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '24F - MORIBA - EVERYDAY \n27F - DAIMON-MACHI - TUE / SAT \n27F - YUKIYOSHI - WED / FRI / SUN \n29F - TEMAE-JIMA - MON \n30F - HIKIAGE - THU \nSHOP: 6000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/c6/Mass_of_Iron_Bolts.jpg/revision/latest?cb=20181111011659',
  ),
  RnDMaterial(
    name: 'Steel',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/01/Iron4.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 4-Star Material, Steel will mainly appear in Gunkanyama\'s Area (31-40F). Continues appearing until 100F in Tengoku.'),
          Text(
              'Can be bought for 8000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 5000 KC / 1 Death Metal (for x1) or 20000 KC / 4 Death Metals (for x5). Drops from Silver / Gold Lost Bags.\n'),
          Text('Iron-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '22F - TOYOKAWA - TUE / SAT \n24F - SUMIKIYO - EVERYDAY \n25F - FUGAMI - TUE / SAT \n29F - TATEKAWA - MON \n29F - AOTOBASHI - THU \n29F - HASHIDAKA - EVERYDAY \n32F - KOSHI-YAMA - EVERYDAY \n33F - MIRAIGAOKA - THU \n34F - OTANI-YAMA - WED / FRI / SUN \n35F - KOMADA - TUE / SAT \n35F - WAKABA - EVERYDAY \n37F - MOGURO - WED / FRI / SUN \n39F - SHINKAWA - MON \n39F - NAKASAKI - EVERYDAY - Conected to the main elevator \n45F - GIOU - EVERYDAY \n45F - KINO - EVERYDAY \n45F - OTAYA - EVERYDAY \n46F - TAHEI - EVERYDAY \n49F - NERIKOU - EVERYDAY \n54F+ - TENGOKU \n54F, 62F, 69F, 77F, \n84F, 92F, 99F'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '31F - OBARA - EVERYDAY - Conected to the main elevator \n33F - TOGOSE - EVERYDAY - Conected to the main elevator \n35F - NAKAEDA - THU \n36F - YATSUO - EVERYDAY - Conected to the main elevator \n37F - HIROMATSU - EVERYDAY - Conected to the main elevator'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '27F - YUKIYOSHI - WED / FRI / SUN \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 8000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/46/Steel.jpg/revision/latest?cb=20181111012627',
  ),
  RnDMaterial(
    name: 'Ultra-pure Iron',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/5a/Iron5.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 5-Star Material, Ultra-pure Iron mainly appears above 41F+, in Battle To The Top and Tengoku. Rarely appears on Iron-specific floors in Gunkanyama\'s Area (31-40F).'),
          Text(
              'Can be bought for 10000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 5000 KC / 1 Death Metal (for x1) or 20000 KC / 4 Death Metals (for x5). Drops from Gold Lost Bags.\n'),
          Text('Iron-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '32F - KOSHI-YAMA - EVERYDAY \n33F - MIRAIGAOKA - THU \n34F - OTANI-YAMA - WED / FRI / SUN \n35F - KOMADA - TUE / SAT \n35F - WAKABA - EVERYDAY \n37F - MOGURO - WED / FRI / SUN \n39F - SHINKAWA - MON \n39F - NAKASAKI - EVERYDAY - Conected to the main elevator \n45F - GIOU - EVERYDAY \n45F - KINO - EVERYDAY \n45F - OTAYA - EVERYDAY \n46F - TAHEI - EVERYDAY \n49F - NERIKOU - EVERYDAY \n54F+ - TENGOKU \n54F, 62F, 69F, 77F, \n84F, 92F, 99F, 107F, \n114F, 122F, 129F, 137F, \n144F, 152F, 159F, 167F, \n174F, 182F, 189F, 197F, \n204F, 212F, 219F, 227F, \n234F, 242F, 249F, 257, \n264F, 272F, 279F, 287F, \n294F, 302F, 309F, 317F, \n324F, 332F, 339F, 347F'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '42F - WADACHI - EVERYDAY \n44F - MAYARI - EVERYDAY \n45F - DOAME - EVERYDAY - Conected to the main elevator \n48F - HIBIKI - EVERYDAY \n48F - TATSUMATSU - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '27F - YUKIYOSHI - WED / FRI / SUN \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 10000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/9c/Ultra-pure_Iron.jpg/revision/latest?cb=20181111015514',
  ),
  RnDMaterial(
    name: 'Special Steel',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a3/Iron6.png/revision/latest',
    rarity: 6,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 6-Star Material, Special Steel mainly appears above 41F+, on Iron-specific floors in Battle To The Top and Tengoku.'),
          Text(
              'Can be bought for 1500 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 15000 KC / 3 Death Metals (for x1) or 60000 KC / 12 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Iron-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '45F - GIOU - EVERYDAY \n45F - KINO - EVERYDAY \n45F - OTAYA - EVERYDAY \n46F - TAHEI - EVERYDAY \n49F - NERIKOU - EVERYDAY \n54F+ - TENGOKU \n54F, 62F, 69F, 77F, \n84F, 92F, 99F, 107F, \n114F, 122F, 129F, 137F, \n144F, 152F, 159F, 167F, \n174F, 182F, 189F, 197F, \n204F, 212F, 219F, 227F, \n234F, 242F, 249F, 257, \n264F, 272F, 279F, 287F, \n294F, 302F, 309F, 317F, \n324F, 332F, 339F, 347F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/62/Special_Steel.jpg/revision/latest?cb=20181111021328',
  ),
  RnDMaterial(
    name: 'Chrome-Moly',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/fd/Iron7.png/revision/latest',
    rarity: 7,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Chrome-Moly only appears on Iron-specific floors in Tengoku. It becomes more common above 100F.'),
          Text(
              'Can be bought for 2000 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metals (for x1) or 80000 KC / 16 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Iron-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '54F+ - TENGOKU \n54F, 62F, 69F, 77F, \n84F, 92F, 99F, 107F, \n114F, 122F, 129F, 137F, \n144F, 152F, 159F, 167F, \n174F, 182F, 189F, 197F, \n204F, 212F, 219F, 227F, \n234F, 242F, 249F, 257, \n264F, 272F, 279F, 287F, \n294F, 302F, 309F, 317F, \n324F, 332F, 339F, 347'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/9b/Chrome-Moly.jpg/revision/latest?cb=20181111022350',
  ),
  RnDMaterial(
    name: 'Tamahagane',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/15/Iron8.png/revision/latest',
    rarity: 8,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Tamahagane can rarely appear in Tengoku on Iron-specific floors above 80F.'),
          Text(
              'May also be bought once-per-day in the Bloodnium Exchange for 2500 Bloodnium.'),
          Text('Iron-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '84F+ - TENGOKU \n84F, 92F, 99F, 107F, \n114F, 122F, 129F, 137F, \n144F, 152F, 159F, 167F, \n174F, 182F, 189F, 197F, \n204F, 212F, 219F, 227F, \n234F, 242F, 249F, 257F, \n264F, 272F, 279F, 287F, \n294F, 302F, 309F, 317F, \n324F, 332F, 339F, 347F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/30/Tamahagane.jpg/revision/latest?cb=20181129150430',
  ),
];

List<RnDMaterial> oil = [
  RnDMaterial(
    name: 'Waste Oil',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/f9/Oil1.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 1-Star Material, Waste Oil will mainly appear in Max\'s Area (1-10F).'),
          Text(
              'Can be bought for 2000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 10000 KC / 2 Death Metal (for x5). Drops from Bronze Lost Bags.\n'),
          Text('Oil-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '4F - KANKAMATA - MON \n4F - KYOWA-JIMA - TUE / SAT \n5F - SOMAGAWA - WED / FRI / SUN \n7F - DANEDA - EVERYDAY \n17F - HOSHI-JOSUI - MON \n17F - KINUTAMIN - EVERYDAY \n25F - OSHI-HAMA - WED / FRI / SUN \n26F - YOSHIMI - THU \n26F - SHIMOMENO - EVERYDAY'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - IMOKAWA-CHO - EVERYDAY \n3F - KAMI-IKEDOI - EVERYDAY \n5F - SOKAI - THU \n6F - MEKAROKU-GO - EVERYDAY \n7F - REGASHI-KOYA - THU \n9F - YONEGUCHI - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n5F - DENDEN-CHOFU - TUE / THU / SAT \n7F - MEGASHI-KOYA - MON \n9F - YONEGUCHI - EVERYDAY \nSHOP: 2000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/52/Waste_Oil.jpg/revision/latest?cb=20181111003357',
  ),
  RnDMaterial(
    name: 'Vegetable Oil',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d1/Oil2.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 2-Star Material, Vegetable Oil will mainly appear in Jackson\'s Area (11-20F).'),
          Text(
              'Can be bought for 4000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 15000 KC / 3 Death Metals (for x5). Drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Oil-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '4F - KANKAMATA - MON \n4F - KYOWA-JIMA - TUE / SAT \n5F - SOMAGAWA - WED / FRI / SUN \n7F - DANEDA - EVERYDAY \n17F - HOSHI-JOSUI - MON \n17F - KINUTAMIN - EVERYDAY \n25F - OSHI-HAMA - WED / FRI / SUN \n26F - YOSHIMI - THU \n26F - SHIMOMENO - EVERYDAY \n31F - ITSU-TSUKUMO - TUE / SAT \n32F - KATSUMA - EVERYDAY \n37F - MITSUBA - EVERYDAY \n38F - IBAKOEN - MON \n38F - HIMOKAWA - THU \n39F - HARATSUKA - EVERYDAY'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '11F - NOKEJIRI - EVERYDAY \n12F - SEYANE - EVERYDAY \n13F - KAMOTO - EVERYDAY - Conected to the main elevator \n13F - MOMOHARA - EVERYDAY \n16F - KISUYAMA - THU \n18F - TEMO-UMA - EVERYDAY \n18F - TATA - EVERYDAY \n19F - DAIDA - EVERYDAY - Conected to the main elevator \n19F - HIBIKI - TUE / WED / THU / FRI / SAT / SUN \n19F - MEKAMACHI - MON \n20F - MONEGI - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN \n17F - NUTAKOEN - MON / TUE / THU / FRI / SAT \nSHOP: 4000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/c0/Vegetable_Oil.jpg/revision/latest?cb=20181111010521',
  ),
  RnDMaterial(
    name: 'Crude Oil',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/2a/Oil3.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 3-Star Material, Crude Oil will mainly appear in Crowley\'s Area (21-30F).'),
          Text(
              'Can be bought for 6000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metals (for x5). Drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Oil-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '17F - HOSHI-JOSUI - MON \n17F - KINUTAMIN - EVERYDAY \n25F - OSHI-HAMA - WED / FRI / SUN \n26F - YOSHIMI - THU \n26F - SHIMEMENO - EVERYDAY \n31F - ITSU-TSUKUMO - TUE / SAT \n32F - KATSUMA - EVERYDAY \n37F - MITSUBA - EVERYDAY \n38F - IBAKOEN - MON \n38F - HIMOKAWA - THU \n39F - HARATSUKA - EVERYDAY \n46F - TAKAIHE - EVERYDAY \n49F - FUWA - EVERYDAY'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '21F - AKAMI - EVERYDAY - Conected to the main elevator \n21F - ARIGURE - EVERYDAY \n22F - KAWABE - EVERYDAY \n22F - TOMIYAMA - THU \n25F - KANIE - EVERYDAY - Conected to the main elevator \n27F - KINOE - THU \n27F - SHICHI-FUGU - MON \n27F - KUROKAWA - WED / FRI / SUN \n28F - HYAKKOKU - EVERYDAY \n28F - FUMIBANA - THU \n29F - HENKE - THU \n30F - TOWADA - EVERYDAY \n30F - YOKOZUNA - TUE / SAT'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '24F - MORIBA - EVERYDAY \n27F - DAIMON-MACHI - TUE / SAT \n27F - YUKIYOSHI - WED / FRI / SUN \n29F - TEMAE-JIMA - MON \n30F - HIKIAGE - THU \nSHOP: 6000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/85/Crude_Oil.jpg/revision/latest?cb=20181111012349',
  ),
  RnDMaterial(
    name: 'Mineral Oil',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/18/Oil4.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 4-Star Material, Mineral Oil will mainly appear in Gunkanyama\'s Area (31-40F). Continues appearing until 100F in Tengoku.'),
          Text(
              'Can be bought for 8000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 5000 KC / 1 Death Metal (for x1) or 20000 KC / 4 Death Metals (for x5). Drops from Silver / Gold Lost Bags.\n'),
          Text('Oil-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '25F - OSHI-HAMA - WED / FRI / SUN \n26F - YOSHIMI - THU \n26F - SHIMEMENO - EVERYDAY \n31F - ITSU-TSUKUMO - TUE / SAT \n32F - KATSUMA - EVERYDAY \n37F - MITSUBA - EVERYDAY \n38F - IBAKOEN - MON \n38F - HIMOKAWA - THU \n39F - HARATSUKA - EVERYDAY \n46F - TAKAIHE - EVERYDAY \n49F - FUWA - EVERYDAY \n57F+ - TENGOKU \n57F, 64F, 72F, 79F, \n87F, 94F'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '31F - OBARA - EVERYDAY - Conected to the main elevator \n33F - TOGOSE - EVERYDAY - Conected to the main elevator \n35F - NAKAEDA - THU \n36F - YATSUO - EVERYDAY - Conected to the main elevator \n37F - HIROMATSU - EVERYDAY - Conected to the main elevator'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '27F - YUKIYOSHI - WED / FRI / SUN \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 8000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/c5/Mineral_Oil.jpg/revision/latest?cb=20181111013814',
  ),
  RnDMaterial(
    name: 'Chemo-synthesized Oil',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/ae/Oil5.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 5-Star Material, Chemo-synthesized Oil mainly appears above 41F+, in Battle To The Top and Tengoku. Rarely appears on Oil-specific floors in Gunkanyama\'s Area (31-40F).'),
          Text(
              'Can be bought for 10000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 5000 KC / 1 Death Metal (for x1) or 20000 KC / 4 Death Metals (for x5). Drops from Gold Lost Bags.\n'),
          Text('Oil-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '31F - ITSU-TSUKUMO - TUE / SAT \n32F - KATSUMA - EVERYDAY \n37F - MITSUBA - EVERYDAY \n38F - IBAKOEN - MON \n38F - HIMOKAWA - THU \n39F - HARATSUKA - EVERYDAY \n46F - TAKAIHE - EVERYDAY \n49F - FUWA - EVERYDAY \n57F+ - TENGOKU \n57F, 64F, 72F, 79F, \n87F, 94F, 102F, 109F, \n117F, 124F, 132F, 139F, \n147F, 154F, 162F, 169F, \n177F, 184F, 192F, 199F, \n207F, 214F, 222F, 229F, \n237F, 244F, 252F, 259F, \n267F, 274F, 282F, 289F, \n297F, 304F, 312F, 319F, \n327F, 334F, 342F, 349F'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '42F - WADACHI - EVERYDAY \n44F - MAYARI - EVERYDAY \n45F - DOAME - EVERYDAY - Conected to the main elevator \n48F - HIBIKI - EVERYDAY \n48F - TATSUMATSU - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '27F - YUKIYOSHI - WED / FRI / SUN \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 10000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/10/Chemo-synthesized_Oil.jpg/revision/latest?cb=20181111020635',
  ),
  RnDMaterial(
    name: 'Biofuel',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d4/Oil6.png/revision/latest',
    rarity: 6,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 6-Star Material, Biofuel mainly appears above 41F+, on Oil-specific floors in Battle To The Top and Tengoku.'),
          Text(
              'Can be bought for 1500 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for  15000 KC / 3 Death Metals (for x1) or  60000 KC / 12 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Oil-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '46F - TAKAIHE - EVERYDAY \n49F - FUWA - EVERYDAY \n57F+ - TENGOKU \n57F, 64F, 72F, 79F, \n87F, 94F, 102F, 109F, \n117F, 124F, 132F, 139F, \n147F, 154F, 162F, 169F, \n177F, 184F, 192F, 199F, \n207F, 214F, 222F, 229F, \n237F, 244F, 252F, 259F, \n267F, 274F, 282F, 289F, \n297F, 304F, 312F, 319F, \n327F, 334F, 342F, 349F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/fd/Biofuel.jpg/revision/latest?cb=20181111022049',
  ),
  RnDMaterial(
    name: 'Tiger Grease',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/92/Oil7.png/revision/latest',
    rarity: 7,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Tiger Grease only appears on Oil-specific floors in Tengoku. It becomes more common above 100F.'),
          Text(
              'Can be bought for 2000 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metals (for x1) or 80000 KC / 16 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Oil-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '57F+ - TENGOKU \n57F, 64F, 72F, 79F, \n87F, 94F, 102F, 109F, \n117F, 124F, 132F, 139F, \n147F, 154F, 162F, 169F, \n177F, 184F, 192F, 199F, \n207F, 214F, 222F, 229F, \n237F, 244F, 252F, 259F, \n267F, 274F, 282F, 289F, \n297F, 304F, 312F, 319F, \n327F, 334F, 342F, 349F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/47/Tiger_Grease.jpg/revision/latest?cb=20181111023147',
  ),
  RnDMaterial(
    name: 'Fatback',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b0/Oil8.png/revision/latest',
    rarity: 8,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Fatback can rarely appear in Tengoku on Oil-specific floors above 80F.'),
          Text('Can be bought for 2500 Bloodnium in the Bloodnium Exchange.'),
          Text('Oil-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '87F+ - TENGOKU \n87F, 94F, 102F, 109F, \n117F, 124F, 132F, 139F, \n147F, 154F, 162F, 169F, \n177F, 184F, 192F, 199F, \n207F, 214F, 222F, 229F, \n237F, 244F, 252F, 259F, \n267F, 274F, 282F, 289F, \n297F, 304F, 312F, 319F, \n327F, 334F, 342F, 349F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/8f/Fatback.jpg/revision/latest?cb=20181129150854',
  ),
];

List<RnDMaterial> wood = [
  RnDMaterial(
    name: 'Veneer Plank',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/4c/Wood1.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 1-Star Material, Veneer Planks will mainly appear in Max\'s Area (1-10F).'),
          Text(
              'Can be bought for 2000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 10000 KC / 2 Death Metals (for x5). Drops from Bronze Lost Bags.\n'),
          Text('Wood-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '4F - SHIMO-MARIKO - TUE / SAT \n5F - JOTEN-JIMA - EVERYDAY \n7F - SHIMINE-MACHI - MON \n9F - OMENO-KITA - MON \n10F - OMENO-TOICHI - MON \n16F - KITAMIN - MON \n16F - KAGA - EVERYDAY - Conected to the main elevator \n24F - AGASU - EVERYDAY \n28F - TOJIMA - THU'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - IMOKAWA-CHO - EVERYDAY \n3F - KAMI-IKEDOI - EVERYDAY \n5F - SOKAI - THU \n6F - MEKAROKU-GO - EVERYDAY \n7F - REGASHI-KOYA - THU \n9F - YONEGUCHI - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n5F - DENDEN-CHOFU - TUE / THU / SAT \n7F - MEGASHI-KOYA - MON \n9F - YONEGUCHI - EVERYDAY \nSHOP: 2000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/bf/Veneer_Plank.jpg/revision/latest?cb=20181111001202',
  ),
  RnDMaterial(
    name: 'MDF',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/9f/Wood2.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 2-Star Material, MDF will mainly appear in Jackson\'s Area (11-20F).'),
          Text(
              'Can be bought for 4000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 15000 KC / 3 Death Metals (for x5). Drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Wood-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '4F - SHIMO-MARIKO - TUE / SAT \n5F - JOTEN-JIMA - EVERYDAY \n7F - SHIMINE-MACHI - MON \n9F - OMENO-KITA - MON \n10F - OMENO-TOICHI - MON \n16F - KITAMIN - MON \n16F - KAGA - EVERYDAY - Conected to the main elevator \n24F - AGASU - EVERYDAY \n28F - TOJIMA - THU \n33F - AKABADAI - WED / FRI / SUN \n34F - SENGOKU - THU \n36F - SENBASHI - MON \n36F - ITANODAI - EVERYDAY \n40F - KAKINO-MISAKI - TUE / SAT'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '11F - NOKEJIRI - EVERYDAY \n12F - SEYANE - EVERYDAY \n13F - KAMOTO - EVERYDAY - Conected to the main elevator \n13F - MOMOHARA - EVERYDAY \n16F - KISUYAMA - THU \n18F - TEMO-UMA - EVERYDAY \n18F - TATA - EVERYDAY \n19F - DAIDA - EVERYDAY - Conected to the main elevator \n19F - HIBIKI - TUE / WED / THU / FRI / SAT / SUN \n19F - MEKAMACHI - MON \n20F - MONEGI - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN \n17F - NUTAKOEN - MON / TUE / THU / FRI / SAT \nSHOP: 4000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/35/MDF.jpg/revision/latest?cb=20181111010332',
  ),
  RnDMaterial(
    name: 'Rosewood',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/18/Wood3.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 3-Star Material, Rosewood will mainly appear in Crowley\'s Area (21-30F).'),
          Text(
              'Can be bought for 6000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metals (for x5). Drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Wood-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '16F - KITAMIN - MON \n16F - KAGA - EVERYDAY - Conected to the main elevator \n24F - AGASU - EVERYDAY \n28F - TOJIMA - THU \n33F - AKABADAI - WED / FRI / SUN \n34F - SENGOKU - THU \n36F - SENBASHI - MON \n36F - ITANODAI - EVERYDAY \n40F - KAKINO-MISAKI - TUE / SAT \n46F - KURIHARI - EVERYDAY \n47F - SARA-MANNU - EVERYDAY \n47F - KOUMIN - EVERYDAY \n48F - KIBARASE - EVERYDAY'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '21F - AKAMI - EVERYDAY - Conected to the main elevator \n21F - ARIGURE - EVERYDAY \n22F - KAWABE - EVERYDAY \n22F - TOMIYAMA - THU \n25F - KANIE - EVERYDAY - Conected to the main elevator \n27F - KINOE - THU \n27F - SHICHI-FUGU - MON \n27F - KUROKAWA - WED / FRI / SUN \n28F - HYAKKOKU - EVERYDAY \n28F - FUMIBANA - THU \n29F - HENKE - THU \n30F - TOWADA - EVERYDAY \n30F - YOKOZUNA - TUE / SAT'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '24F - MORIBA - EVERYDAY \n27F - DAIMON-MACHI - TUE / SAT \n27F - YUKIYOSHI - WED / FRI / SUN \n29F - TEMAE-JIMA - MON \n30F - HIKIAGE - THU \nSHOP: 6000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/3c/Rosewood.jpg/revision/latest?cb=20181111012111',
  ),
  RnDMaterial(
    name: 'Walnut',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/75/Wood4.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 4-Star Material, Walnut will mainly appear in Gunkanyama\'s Area (31-40F). Continues appearing until 100F in Tengoku.'),
          Text(
              'Can be bought for 8000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 5000 KC / 1 Death Metal (for x1) or 20000 KC / 4 Death Metals (for x5). Drops from Silver / Gold Lost Bags.\n'),
          Text('Wood-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '24F - AGASU - EVERYDAY \n28F - TOJIMA - THU \n33F - AKABADAI - WED / FRI / SUN \n34F - SENGOKU - THU \n36F - SENBASHI - MON \n36F - ITANODAI - EVERYDAY \n40F - KAKINO-MISAKI - TUE / SAT \n46F - KURIHARI - EVERYDAY \n47F - SARA-MANNU - EVERYDAY \n47F - KOUMIN - EVERYDAY \n48F - KIBARASE - EVERYDAY \n53F+ - TENGOKU - Wood-specific Floors: \n53F, 61F, 68F, 76F, \n83F, 91F, 98F'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '31F - OBARA - EVERYDAY - Conected to the main elevator \n33F - TOGOSE - EVERYDAY - Conected to the main elevator \n35F - NAKAEDA - THU \n36F - YATSUO - EVERYDAY - Conected to the main elevator \n37F - HIROMATSU - EVERYDAY - Conected to the main elevator'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '27F - YUKIYOSHI - WED / FRI / SUN \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 8000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/0a/Walnut.jpg/revision/latest?cb=20181111013423',
  ),
  RnDMaterial(
    name: 'Mahogany',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/30/Wood5.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 5-Star Material, Mahogany mainly appears above 41F+, in Battle To The Top and Tengoku. Rarely appears on Wood-specific floors in Gunkanyama\'s Area (31-40F).'),
          Text(
              'Can be bought for 10000 KC from Gyaku-Funsha, or from the daily Hernia lineup (if available) for 5000 KC / 1 Death Metal (for x1) or 20000 KC / 4 Death Metals (for x5). Drops from Gold Lost Bags.\n'),
          Text('Wood-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '33F - AKABADAI - WED / FRI / SUN \n34F - SENGOKU - THU \n36F - SENBASHI - MON \n36F - ITANODAI - EVERYDAY \n40F - KAKINO-MISAKI - TUE / SAT \n46F - KURIHARI - EVERYDAY \n47F - SARA-MANNU - EVERYDAY \n47F - KOUMIN - EVERYDAY \n48F - KIBARASE - EVERYDAY \n53F+ - TENGOKU \n53F, 61F, 68F, 76F, \n83F, 91F, 98F, 106F, \n113F, 121F, 128F, 136F, \n143F, 151F, 158F, 166F, \n173F, 181F, 188F, 196F, \n203F, 211F, 218F, 226F, \n233F, 241F, 248F, 256F, \n263F, 271F, 278F, 286F, \n293F, 301F, 308F, 316F, \n323F, 331F, 338F, 346F'),
          Text('   \n'),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '42F - WADACHI - EVERYDAY \n44F - MAYARI - EVERYDAY \n45F - DOAME - EVERYDAY - Conected to the main elevator \n48F - HIBIKI - EVERYDAY \n48F - TATSUMATSU - EVERYDAY'),
          Text('   \n'),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '27F - YUKIYOSHI - WED / FRI / SUN \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 10000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/93/Mahogany.jpg/revision/latest?cb=20181111020405',
  ),
  RnDMaterial(
    name: 'Snake Wood',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/51/Wood6.png/revision/latest',
    rarity: 6,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'As a 6-Star Material, Snake Wood mainly appears above 41F+, on Wood-specific floors in Battle To The Top and Tengoku.'),
          Text(
              'Can be bought for 1500 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 15000 KC / 3 Death Metals (for x1) or 60000 KC / 12 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Wood-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '46F - KURIHARI - EVERYDAY \n47F - SARA-MANNU - EVERYDAY \n47F - KOUMIN - EVERYDAY \n48F - KIBARASE - EVERYDAY \n53F+ - TENGOKU \n53F, 61F, 68F, 76F, \n83F, 91F, 98F, 106F, \n113F, 121F, 128F, 136F, \n143F, 151F, 158F, 166F, \n173F, 181F, 188F, 196F, \n203F, 211F, 218F, 226F, \n233F, 241F, 248F, 256F, \n263F, 271F, 278F, 286F, \n293F, 301F, 308F, 316F, \n323F, 331F, 338F, 346F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/9f/Snake_Wood.jpg/revision/latest?cb=20181111021956',
  ),
  RnDMaterial(
    name: 'Black Coal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/bf/Wood7.png/revision/latest',
    rarity: 7,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Black Coal only appears on Wood-specific floors in Tengoku. It becomes more common above 100F.'),
          Text(
              'Can be bought for 2000 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metals (for x1) or 80000 KC / 16 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Wood-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '53F+ - TENGOKU \n53F, 61F, 68F, 76F, \n83F, 91F, 98F, 106F, \n113F, 121F, 128F, 136F, \n143F, 151F, 158F, 166F, \n173F, 181F, 188F, 196F, \n203F, 211F, 218F, 226F, \n233F, 241F, 248F, 256F, \n263F, 271F, 278F, 286F, \n293F, 301F, 308F, 316F, \n323F, 331F, 338F, 346F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/f4/Black_Coal.jpg/revision/latest?cb=20181111023029',
  ),
  RnDMaterial(
    name: 'Lignum Vitae',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/0b/Wood8.png/revision/latest',
    rarity: 8,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Lignum Vitae only appears rarely on Wood-specific floors in Tengoku above 80F.'),
          Text('Can be bought for 2500 Bloodnium in the Bloodnium Exchange.\n'),
          Text('Wood-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '83F+ - TENGOKU \n83F, 91F, 98F, 106F, \n113F, 121F, 128F, 136F, \n143F, 151F, 158F, 166F, \n173F, 181F, 188F, 196F, \n203F, 211F, 218F, 226F, \n233F, 241F, 248F, 256F, \n263F, 271F, 278F, 286F, \n293F, 301F, 308F, 316F, \n323F, 331F, 338F, 346F'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/77/Lignum_Vitae.jpg/revision/latest?cb=20181129150700',
  ),
];

List<RnDMaterial> fiber = [
  RnDMaterial(
    name: 'Cotton',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/4a/Fiber1.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Cotton can be found on any floor that can spawn Fiber materials in the Tower of Barbs, no matter how low or how high. Early Fiber-type materials are not limited by Star Rating, meaning Cotton, Hemp, Leather, Wool, and Silk can EVERYDAY appear together on any Fiber-specific floor, regardless of height. However, Cotton in particular is even more universal than the rest, as it will appear on EVERYDAY-material type floors as well, while the other Fibers will not. It will continue to appear even above 40F+, EVERYDAY the way to the top of the tower.'),
          Text(
              'Can be bought for 2000 KC from Gyaku-Funsha, at any shop location. Also drops from Bronze / Silver Lost Bags.\n'),
          Text('Fiber-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - TAMATA - EVERYDAY - Conected to the main elevator \n3F - OMOKI - WED / FRI / SUN \n5F - HYAKUDORI - EVERYDAY - Conected to the main elevator \n5F - DENDEN-CHOFU - TUE / THU / SAT \n6F - CHUDO - FRI \n7F - YUKI - EVERYDAY \n7F - MEGASHI-KOYA - MON \n8F - META-KOYA - EVERYDAY \n8F - MAMINEMACHI - THU \n8F - SASHI-MAGOME - FRI \n9F - YOSHIKI-DANI - EVERYDAY \n9F - DASAHI-MACHI - TUE / SAT \n10F - SHIMO-OMENO - EVERYDAY \n12F - UKONGAOKA - EVERYDAY - Conected to the main elevator \n13F - OKUSA - TUE / SAT \n14F - YAMADAI - EVERYDAY \n18F - TAISHIDON - THU \n22F - EISEI - FRI \n23F - ECHIZEN-JIMA - EVERYDAY - Conected to the main elevator \n23F - SENSU-BASHI - WED / FRI / SUN \n25F - FUYU-BAYASHI - TUE / SAT \n25F - TSUBAKI - MON \n27F - SHINKO-BASHI - EVERYDAY - Conected to the main elevator \n27F - RIKKA - MON \n27F - YUKIYOSHI - WED / FRI / SUN \n28F - HYAKUDA - EVERYDAY \n29F - BANZEI - TUE / SAT \n29F - TEMAE-JIMA - MON \n33F - UCHINOBU - EVERYDAY \n33F - TENGOKUJI - TUE / SAT \n34F - AZABA - MON \n36F - MOMONOKI-ZAKA - WED / FRI / SUN \n38F - YATAKA-CHO - EVERYDAY \n38F - SOTONE - TUE / SAT \n38F - IBAMURA - MON \n43F - SOKU - EVERYDAY \n44F - IROKA - EVERYDAY \n45F - OTATAI - EVERYDAY \n46F - MOHOKOU - EVERYDAY \n49F - NERI - EVERYDAY \n52F+ - TENGOKU \n52, 59, 67, 74, \n82, 89, 97, 104, \n112, 119, 127, 134, \n142, 149, 157, 164, \n172, 179, 187, 194, \n202, 209, 217, 224, \n232, 239, 247, 254, \n262, 269, 277, 284, \n292, 299, 307, 314, \n322, 329, 337, 344'),
          Text('   '),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - IMOKAWA-CHO - EVERYDAY \n3F - KAMI-IKEDOI - EVERYDAY \n5F - SOKAI - THU \n6F - MEKAROKU-GO - EVERYDAY \n7F - REGASHI-KOYA - THU \n9F - YONEGUCHI - EVERYDAY \n11F - NOKEJIRI - EVERYDAY \n12F - SEYANE - EVERYDAY \n13F - KAMOTO - EVERYDAY - Conected to the main elevator \n13F - MOMOHARA - EVERYDAY \n16F - KISUYAMA - THU \n18F - TEMO-UMA - EVERYDAY \n18F - TATA - EVERYDAY \n19F - DAIDA - EVERYDAY - Conected to the main elevator \n19F - HIBIKI - TUE / WED / THU / FRI / SAT / SUN \n19F - MEKAMACHI - MON \n20F - MONEGI - EVERYDAY \n21F - AKAMI - EVERYDAY - Conected to the main elevator \n21F - ARIGURE - EVERYDAY \n22F - KAWABE - EVERYDAY \n22F - TOMIYAMA - THU \n25F - KANIE - EVERYDAY - Conected to the main elevator \n27F - KINOE - THU \n27F - SHICHI-FUGU - MON \n27F - KUROKAWA - WED / FRI / SUN \n28F - HYAKKOKU - EVERYDAY \n28F - FUMIBANA - THU \n29F - HENKE - THU \n30F - TOWADA - EVERYDAY \n30F - YOKOZUNA - TUE / SAT \n31F - OBARA - EVERYDAY - Conected to the main elevator \n33F - TOGOSE - EVERYDAY - Conected to the main elevator \n35F - NAKAEDA - THU \n36F - YATSUO - EVERYDAY - Conected to the main elevator \n37F - HIROMATSU - EVERYDAY - Conected to the main elevator'),
          Text('   '),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n5F - DENDEN-CHOFU - TUE / THU / SAT \n9F - YONEGUCHI - EVERYDAY \n14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN \n17F - NUTAKOEN - MON / TUE / THU / FRI / SAT \n24F - MORIBA - EVERYDAY \n27F - DAIMON-MACHI - TUE / SAT \n27F - YUKIYOSHI - WED / FRI / SUN \n29F - TEMAE-JIMA - MON \n30F - HIKIAGE - THU \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 2000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/71/Cotton.jpg/revision/latest?cb=20181111004105',
  ),
  RnDMaterial(
    name: 'Hemp',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a4/Fiber2.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Hemp can be found on any Fiber-specific floor in the Tower of Barbs, no matter how low or how high. Early Fiber-type materials are not limited by Star Rating, meaning Cotton, Hemp, Leather, Wool, and Silk can EVERYDAY appear together on any Fiber floor, regardless of height. However, Fiber type materials besides Cotton and Carbon Fiber will not appear on any EVERYDAY-material floors. It will continue to appear even above 40F+, EVERYDAY the way to the top of the tower.'),
          Text(
              'Can be bought for 2000 KC from Gyaku-Funsha, at any shop location. Also drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Fiber-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - TAMATA - EVERYDAY - Conected to the main elevator \n3F - OMOKI - WED / FRI / SUN \n5F - HYAKUDORI - EVERYDAY - Conected to the main elevator \n5F - DENDEN-CHOFU - TUE / THU / SAT \n6F - CHUDO - FRI \n7F - YUKI - EVERYDAY \n7F - MEGASHI-KOYA - MON \n8F - META-KOYA - EVERYDAY \n8F - MAMINEMACHI - THU \n8F - SASHI-MAGOME - FRI \n9F - YOSHIKI-DANI - EVERYDAY \n9F - DASAHI-MACHI - TUE / SAT \n10F - SHIMO-OMENO - EVERYDAY \n12F - UKONGAOKA - EVERYDAY - Conected to the main elevator \n13F - OKUSA - TUE / SAT \n14F - YAMADAI - EVERYDAY \n18F - TAISHIDON - THU \n22F - EISEI - FRI \n23F - ECHIZEN-JIMA - EVERYDAY - Conected to the main elevator \n23F - SENSU-BASHI - WED / FRI / SUN \n25F - FUYU-BAYASHI - TUE / SAT \n25F - TSUBAKI - MON \n27F - SHINKO-BASHI - EVERYDAY - Conected to the main elevator \n27F - RIKKA - MON \n27F - YUKIYOSHI - WED / FRI / SUN \n28F - HYAKUDA - EVERYDAY \n29F - BANZEI - TUE / SAT \n29F - TEMAE-JIMA - MON \n33F - UCHINOBU - EVERYDAY \n33F - TENGOKUJI - TUE / SAT \n34F - AZABA - MON \n36F - MOMONOKI-ZAKA - WED / FRI / SUN \n38F - YATAKA-CHO - EVERYDAY \n38F - SOTONE - TUE / SAT \n38F - IBAMURA - MON \n43F - SOKU - EVERYDAY \n44F - IROKA - EVERYDAY \n45F - OTATAI - EVERYDAY \n46F - MOHOKOU - EVERYDAY \n49F - NERI - EVERYDAY \n52F+ - TENGOKU \n52, 59, 67, 74, \n82, 89, 97, 104, \n112, 119, 127, 134, \n142, 149, 157, 164, \n172, 179, 187, 194, \n202, 209, 217, 224, \n232, 239, 247, 254, \n262, 269, 277, 284, \n292, 299, 307, 314, \n322, 329, 337, 344'),
          Text('   '),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - IMOKAWA-CHO - EVERYDAY \n3F - KAMI-IKEDOI - EVERYDAY \n5F - SOKAI - THU \n6F - MEKAROKU-GO - EVERYDAY \n7F - REGASHI-KOYA - THU \n9F - YONEGUCHI - EVERYDAY \n11F - NOKEJIRI - EVERYDAY \n12F - SEYANE - EVERYDAY \n13F - KAMOTO - EVERYDAY - Conected to the main elevator \n13F - MOMOHARA - EVERYDAY \n16F - KISUYAMA - THU \n18F - TEMO-UMA - EVERYDAY \n18F - TATA - EVERYDAY \n19F - DAIDA - EVERYDAY - Conected to the main elevator \n19F - HIBIKI - TUE / WED / THU / FRI / SAT / SUN \n19F - MEKAMACHI - MON \n20F - MONEGI - EVERYDAY \n21F - AKAMI - EVERYDAY - Conected to the main elevator \n21F - ARIGURE - EVERYDAY \n22F - KAWABE - EVERYDAY \n22F - TOMIYAMA - THU \n25F - KANIE - EVERYDAY - Conected to the main elevator \n27F - KINOE - THU \n27F - SHICHI-FUGU - MON \n27F - KUROKAWA - WED / FRI / SUN \n28F - HYAKKOKU - EVERYDAY \n28F - FUMIBANA - THU \n29F - HENKE - THU \n30F - TOWADA - EVERYDAY \n30F - YOKOZUNA - TUE / SAT \n31F - OBARA - EVERYDAY - Conected to the main elevator \n33F - TOGOSE - EVERYDAY - Conected to the main elevator \n35F - NAKAEDA - THU \n36F - YATSUO - EVERYDAY - Conected to the main elevator \n37F - HIROMATSU - EVERYDAY - Conected to the main elevator'),
          Text('   '),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n5F - DENDEN-CHOFU - TUE / THU / SAT \n9F - YONEGUCHI - EVERYDAY \n14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN \n17F - NUTAKOEN - MON / TUE / THU / FRI / SAT \n24F - MORIBA - EVERYDAY \n27F - DAIMON-MACHI - TUE / SAT \n27F - YUKIYOSHI - WED / FRI / SUN \n29F - TEMAE-JIMA - MON \n30F - HIKIAGE - THU \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 2000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/67/Hemp.jpg/revision/latest?cb=20181111011410',
  ),
  RnDMaterial(
    name: 'Leather',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/ac/Fiber3.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Leather can be found on any Fiber-specific floor in the Tower of Barbs, no matter how low or how high. Early Fiber-type materials are not limited by Star Rating, meaning Cotton, Hemp, Leather, Wool, and Silk can EVERYDAY appear together on any Fiber floor, regardless of height. However, Fiber type materials besides Cotton and Carbon Fiber will not appear on any EVERYDAY-material floors. It will continue to appear even above 40F+, EVERYDAY the way to the top of the tower.'),
          Text(
              'Can be bought for 2000 KC from Gyaku-Funsha, at any shop location. Also drops from Bronze / Silver / Gold Lost Bags.\n'),
          Text('Fiber-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - TAMATA - EVERYDAY - Conected to the main elevator \n3F - OMOKI - WED / FRI / SUN \n5F - HYAKUDORI - EVERYDAY - Conected to the main elevator \n5F - DENDEN-CHOFU - TUE / THU / SAT \n6F - CHUDO - FRI \n7F - YUKI - EVERYDAY \n7F - MEGASHI-KOYA - MON \n8F - META-KOYA - EVERYDAY \n8F - MAMINEMACHI - THU \n8F - SASHI-MAGOME - FRI \n9F - YOSHIKI-DANI - EVERYDAY \n9F - DASAHI-MACHI - TUE / SAT \n10F - SHIMO-OMENO - EVERYDAY \n12F - UKONGAOKA - EVERYDAY - Conected to the main elevator \n13F - OKUSA - TUE / SAT \n14F - YAMADAI - EVERYDAY \n18F - TAISHIDON - THU \n22F - EISEI - FRI \n23F - ECHIZEN-JIMA - EVERYDAY - Conected to the main elevator \n23F - SENSU-BASHI - WED / FRI / SUN \n25F - FUYU-BAYASHI - TUE / SAT \n25F - TSUBAKI - MON \n27F - SHINKO-BASHI - EVERYDAY - Conected to the main elevator \n27F - RIKKA - MON \n27F - YUKIYOSHI - WED / FRI / SUN \n28F - HYAKUDA - EVERYDAY \n29F - BANZEI - TUE / SAT \n29F - TEMAE-JIMA - MON \n33F - UCHINOBU - EVERYDAY \n33F - TENGOKUJI - TUE / SAT \n34F - AZABA - MON \n36F - MOMONOKI-ZAKA - WED / FRI / SUN \n38F - YATAKA-CHO - EVERYDAY \n38F - SOTONE - TUE / SAT \n38F - IBAMURA - MON \n43F - SOKU - EVERYDAY \n44F - IROKA - EVERYDAY \n45F - OTATAI - EVERYDAY \n46F - MOHOKOU - EVERYDAY \n49F - NERI - EVERYDAY \n52F+ - TENGOKU \n52, 59, 67, 74, \n82, 89, 97, 104, \n112, 119, 127, 134, \n142, 149, 157, 164, \n172, 179, 187, 194, \n202, 209, 217, 224, \n232, 239, 247, 254, \n262, 269, 277, 284, \n292, 299, 307, 314, \n322, 329, 337, 344'),
          Text('   '),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - IMOKAWA-CHO - EVERYDAY \n3F - KAMI-IKEDOI - EVERYDAY \n5F - SOKAI - THU \n6F - MEKAROKU-GO - EVERYDAY \n7F - REGASHI-KOYA - THU \n9F - YONEGUCHI - EVERYDAY \n11F - NOKEJIRI - EVERYDAY \n12F - SEYANE - EVERYDAY \n13F - KAMOTO - EVERYDAY - Conected to the main elevator \n13F - MOMOHARA - EVERYDAY \n16F - KISUYAMA - THU \n18F - TEMO-UMA - EVERYDAY \n18F - TATA - EVERYDAY \n19F - DAIDA - EVERYDAY - Conected to the main elevator \n19F - HIBIKI - TUE / WED / THU / FRI / SAT / SUN \n19F - MEKAMACHI - MON \n20F - MONEGI - EVERYDAY \n21F - AKAMI - EVERYDAY - Conected to the main elevator \n21F - ARIGURE - EVERYDAY \n22F - KAWABE - EVERYDAY \n22F - TOMIYAMA - THU \n25F - KANIE - EVERYDAY - Conected to the main elevator \n27F - KINOE - THU \n27F - SHICHI-FUGU - MON \n27F - KUROKAWA - WED / FRI / SUN \n28F - HYAKKOKU - EVERYDAY \n28F - FUMIBANA - THU \n29F - HENKE - THU \n30F - TOWADA - EVERYDAY \n30F - YOKOZUNA - TUE / SAT \n31F - OBARA - EVERYDAY - Conected to the main elevator \n33F - TOGOSE - EVERYDAY - Conected to the main elevator \n35F - NAKAEDA - THU \n36F - YATSUO - EVERYDAY - Conected to the main elevator \n37F - HIROMATSU - EVERYDAY - Conected to the main elevator'),
          Text('   '),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n5F - DENDEN-CHOFU - TUE / THU / SAT \n9F - YONEGUCHI - EVERYDAY \n14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN \n17F - NUTAKOEN - MON / TUE / THU / FRI / SAT \n24F - MORIBA - EVERYDAY \n27F - DAIMON-MACHI - TUE / SAT \n27F - YUKIYOSHI - WED / FRI / SUN \n29F - TEMAE-JIMA - MON \n30F - HIKIAGE - THU \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 2000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b2/Leather.jpg/revision/latest?cb=20181111012448',
  ),
  RnDMaterial(
    name: 'Wool',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/e/ed/Fiber4.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Wool can be found on any Fiber-specific floor in the Tower of Barbs, no matter how low or how high. Early Fiber-type materials are not limited by Star Rating, meaning Cotton, Hemp, Leather, Wool, and Silk can EVERYDAY appear together on any Fiber floor, regardless of height. However, Fiber type materials besides Cotton and Carbon Fiber will not appear on any EVERYDAY-material floors. It will continue to appear even above 40F+, EVERYDAY the way to the top of the tower.'),
          Text(
              'Can be bought for 2000 KC from Gyaku-Funsha, at any shop location. Also drops from Silver / Gold Lost Bags.\n'),
          Text('Fiber-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - TAMATA - EVERYDAY - Conected to the main elevator \n3F - OMOKI - WED / FRI / SUN \n5F - HYAKUDORI - EVERYDAY - Conected to the main elevator \n5F - DENDEN-CHOFU - TUE / THU / SAT \n6F - CHUDO - FRI \n7F - YUKI - EVERYDAY \n7F - MEGASHI-KOYA - MON \n8F - META-KOYA - EVERYDAY \n8F - MAMINEMACHI - THU \n8F - SASHI-MAGOME - FRI \n9F - YOSHIKI-DANI - EVERYDAY \n9F - DASAHI-MACHI - TUE / SAT \n10F - SHIMO-OMENO - EVERYDAY \n12F - UKONGAOKA - EVERYDAY - Conected to the main elevator \n13F - OKUSA - TUE / SAT \n14F - YAMADAI - EVERYDAY \n18F - TAISHIDON - THU \n22F - EISEI - FRI \n23F - ECHIZEN-JIMA - EVERYDAY - Conected to the main elevator \n23F - SENSU-BASHI - WED / FRI / SUN \n25F - FUYU-BAYASHI - TUE / SAT \n25F - TSUBAKI - MON \n27F - SHINKO-BASHI - EVERYDAY - Conected to the main elevator \n27F - RIKKA - MON \n27F - YUKIYOSHI - WED / FRI / SUN \n28F - HYAKUDA - EVERYDAY \n29F - BANZEI - TUE / SAT \n29F - TEMAE-JIMA - MON \n33F - UCHINOBU - EVERYDAY \n33F - TENGOKUJI - TUE / SAT \n34F - AZABA - MON \n36F - MOMONOKI-ZAKA - WED / FRI / SUN \n38F - YATAKA-CHO - EVERYDAY \n38F - SOTONE - TUE / SAT \n38F - IBAMURA - MON \n43F - SOKU - EVERYDAY \n44F - IROKA - EVERYDAY \n45F - OTATAI - EVERYDAY \n46F - MOHOKOU - EVERYDAY \n49F - NERI - EVERYDAY \n52F+ - TENGOKU \n52, 59, 67, 74, \n82, 89, 97, 104, \n112, 119, 127, 134, \n142, 149, 157, 164, \n172, 179, 187, 194, \n202, 209, 217, 224, \n232, 239, 247, 254, \n262, 269, 277, 284, \n292, 299, 307, 314, \n322, 329, 337, 344'),
          Text('   '),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - IMOKAWA-CHO - EVERYDAY \n3F - KAMI-IKEDOI - EVERYDAY \n5F - SOKAI - THU \n6F - MEKAROKU-GO - EVERYDAY \n7F - REGASHI-KOYA - THU \n9F - YONEGUCHI - EVERYDAY \n11F - NOKEJIRI - EVERYDAY \n12F - SEYANE - EVERYDAY \n13F - KAMOTO - EVERYDAY - Conected to the main elevator \n13F - MOMOHARA - EVERYDAY \n16F - KISUYAMA - THU \n18F - TEMO-UMA - EVERYDAY \n18F - TATA - EVERYDAY \n19F - DAIDA - EVERYDAY - Conected to the main elevator \n19F - HIBIKI - TUE / WED / THU / FRI / SAT / SUN \n19F - MEKAMACHI - MON \n20F - MONEGI - EVERYDAY \n21F - AKAMI - EVERYDAY - Conected to the main elevator \n21F - ARIGURE - EVERYDAY \n22F - KAWABE - EVERYDAY \n22F - TOMIYAMA - THU \n25F - KANIE - EVERYDAY - Conected to the main elevator \n27F - KINOE - THU \n27F - SHICHI-FUGU - MON \n27F - KUROKAWA - WED / FRI / SUN \n28F - HYAKKOKU - EVERYDAY \n28F - FUMIBANA - THU \n29F - HENKE - THU \n30F - TOWADA - EVERYDAY \n30F - YOKOZUNA - TUE / SAT \n31F - OBARA - EVERYDAY - Conected to the main elevator \n33F - TOGOSE - EVERYDAY - Conected to the main elevator \n35F - NAKAEDA - THU \n36F - YATSUO - EVERYDAY - Conected to the main elevator \n37F - HIROMATSU - EVERYDAY - Conected to the main elevator'),
          Text('   '),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n5F - DENDEN-CHOFU - TUE / THU / SAT \n9F - YONEGUCHI - EVERYDAY \n14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN \n17F - NUTAKOEN - MON / TUE / THU / FRI / SAT \n24F - MORIBA - EVERYDAY \n27F - DAIMON-MACHI - TUE / SAT \n27F - YUKIYOSHI - WED / FRI / SUN \n29F - TEMAE-JIMA - MON \n30F - HIKIAGE - THU \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 2000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/fe/Wool.jpg/revision/latest?cb=20181111013953',
  ),
  RnDMaterial(
    name: 'Silk',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/5b/Fiber5.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Silk can be found on any Fiber-specific floor in the Tower of Barbs, no matter how low or how high. Early Fiber-type materials are not limited by Star Rating, meaning Cotton, Hemp, Leather, Wool, and Silk can EVERYDAY appear together on any Fiber floor, regardless of height. However, Fiber type materials besides Cotton and Carbon Fiber will not appear on any EVERYDAY-material floors. It will continue to appear even above 40F+, EVERYDAY the way to the top of the tower.'),
          Text(
              'Can be bought for 2000 KC from Gyaku-Funsha, at any shop location. Also drops from Silver / Gold Lost Bags.\n'),
          Text('Fiber-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - TAMATA - EVERYDAY - Conected to the main elevator \n3F - OMOKI - WED / FRI / SUN \n5F - HYAKUDORI - EVERYDAY - Conected to the main elevator \n5F - DENDEN-CHOFU - TUE / THU / SAT \n6F - CHUDO - FRI \n7F - YUKI - EVERYDAY \n7F - MEGASHI-KOYA - MON \n8F - META-KOYA - EVERYDAY \n8F - MAMINEMACHI - THU \n8F - SASHI-MAGOME - FRI \n9F - YOSHIKI-DANI - EVERYDAY \n9F - DASAHI-MACHI - TUE / SAT \n10F - SHIMO-OMENO - EVERYDAY \n12F - UKONGAOKA - EVERYDAY - Conected to the main elevator \n13F - OKUSA - TUE / SAT \n14F - YAMADAI - EVERYDAY \n18F - TAISHIDON - THU \n22F - EISEI - FRI \n23F - ECHIZEN-JIMA - EVERYDAY - Conected to the main elevator \n23F - SENSU-BASHI - WED / FRI / SUN \n25F - FUYU-BAYASHI - TUE / SAT \n25F - TSUBAKI - MON \n27F - SHINKO-BASHI - EVERYDAY - Conected to the main elevator \n27F - RIKKA - MON \n27F - YUKIYOSHI - WED / FRI / SUN \n28F - HYAKUDA - EVERYDAY \n29F - BANZEI - TUE / SAT \n29F - TEMAE-JIMA - MON \n33F - UCHINOBU - EVERYDAY \n33F - TENGOKUJI - TUE / SAT \n34F - AZABA - MON \n36F - MOMONOKI-ZAKA - WED / FRI / SUN \n38F - YATAKA-CHO - EVERYDAY \n38F - SOTONE - TUE / SAT \n38F - IBAMURA - MON \n43F - SOKU - EVERYDAY \n44F - IROKA - EVERYDAY \n45F - OTATAI - EVERYDAY \n46F - MOHOKOU - EVERYDAY \n49F - NERI - EVERYDAY \n52F+ - TENGOKU \n52, 59, 67, 74, \n82, 89, 97, 104, \n112, 119, 127, 134, \n142, 149, 157, 164, \n172, 179, 187, 194, \n202, 209, 217, 224, \n232, 239, 247, 254, \n262, 269, 277, 284, \n292, 299, 307, 314, \n322, 329, 337, 344'),
          Text('   '),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '2F - IMOKAWA-CHO - EVERYDAY \n3F - KAMI-IKEDOI - EVERYDAY \n5F - SOKAI - THU \n6F - MEKAROKU-GO - EVERYDAY \n7F - REGASHI-KOYA - THU \n9F - YONEGUCHI - EVERYDAY \n11F - NOKEJIRI - EVERYDAY \n12F - SEYANE - EVERYDAY \n13F - KAMOTO - EVERYDAY - Conected to the main elevator \n13F - MOMOHARA - EVERYDAY \n16F - KISUYAMA - THU \n18F - TEMO-UMA - EVERYDAY \n18F - TATA - EVERYDAY \n19F - DAIDA - EVERYDAY - Conected to the main elevator \n19F - HIBIKI - TUE / WED / THU / FRI / SAT / SUN \n19F - MEKAMACHI - MON \n20F - MONEGI - EVERYDAY \n21F - AKAMI - EVERYDAY - Conected to the main elevator \n21F - ARIGURE - EVERYDAY \n22F - KAWABE - EVERYDAY \n22F - TOMIYAMA - THU \n25F - KANIE - EVERYDAY - Conected to the main elevator \n27F - KINOE - THU \n27F - SHICHI-FUGU - MON \n27F - KUROKAWA - WED / FRI / SUN \n28F - HYAKKOKU - EVERYDAY \n28F - FUMIBANA - THU \n29F - HENKE - THU \n30F - TOWADA - EVERYDAY \n30F - YOKOZUNA - TUE / SAT \n31F - OBARA - EVERYDAY - Conected to the main elevator \n33F - TOGOSE - EVERYDAY - Conected to the main elevator \n35F - NAKAEDA - THU \n36F - YATSUO - EVERYDAY - Conected to the main elevator \n37F - HIROMATSU - EVERYDAY - Conected to the main elevator'),
          Text('   '),
          Text('Gyaku-Funsha', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '3F - OMOKI - WED / FRI / SUN \n5F - DENDEN-CHOFU - TUE / THU / SAT \n9F - YONEGUCHI - EVERYDAY \n14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN \n17F - NUTAKOEN - MON / TUE / THU / FRI / SAT \n24F - MORIBA - EVERYDAY \n27F - DAIMON-MACHI - TUE / SAT \n27F - YUKIYOSHI - WED / FRI / SUN \n29F - TEMAE-JIMA - MON \n30F - HIKIAGE - THU \n33F - UCHINOBU - EVERYDAY \n39F - HARATSUKA - EVERYDAY \nSHOP: 2000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/2d/Silk.jpg/revision/latest?cb=20181111020959',
  ),
  RnDMaterial(
    name: 'Carbon Fiber',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/cb/Fiber6.png/revision/latest',
    rarity: 6,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Carbon Fiber can be found above 41F, in Battle To The Top and mainly Tengoku. Early Fiber-type materials are not limited by Star Rating, meaning you will also see Cotton, Hemp, Leather, Wool, and Silk continue to appear on these higher floors. Carbon Fiber in particular is more universal than the rest, as it will appear on EVERYDAY-material type floors as well, while the other Fibers will not. However, this is only possible within the 40\'s, and is very rare.'),
          Text(
              'Can be bought for 1500 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 15000 KC / 3 Death Metals (for x1) or 60000 KC / 12 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Fiber-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '43F - SOKU - EVERYDAY \n44F - IROKA - EVERYDAY \n45F - OTATAI - EVERYDAY \n46F - MOHOKOU - EVERYDAY \n49F - NERI - EVERYDAY \n52F+ - TENGOKU \n52, 59, 67, 74, \n82, 89, 97, 104, \n112, 119, 127, 134, \n142, 149, 157, 164, \n172, 179, 187, 194, \n202, 209, 217, 224, \n232, 239, 247, 254, \n262, 269, 277, 284, \n292, 299, 307, 314, \n322, 329, 337, 344'),
          Text('   '),
          Text('EVERYDAY-material Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '42F - WADACHI - EVERYDAY \n44F - MAYARI - EVERYDAY \n45F - DOAME - EVERYDAY \n48F - HIBAKI - EVERYDAY \n48F - TATSUMANU - EVERYDAY'),
        ],
      ),
    ),
    urlFullImage: '',
  ),
  RnDMaterial(
    name: 'Aramid Fiber',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/17/Fiber7.png/revision/latest',
    rarity: 7,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Aramid Fiber only appears on Fiber-specific floors in Tengoku. It becomes more common above 100F.'),
          Text(
              'Can be bought for 2000 Bloodnium in the Bloodnium Exchange, or from the daily Hernia lineup (if available) for 20000 KC / 4 Death Metals (for x1) or 80000 KC / 16 Death Metals (for x5). Drops from Platinum Lost Bags.\n'),
          Text('Fiber-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '52F+ - TENGOKU \n52, 59, 67, 74, \n82, 89, 97, 104, \n112, 119, 127, 134, \n142, 149, 157, 164, \n172, 179, 187, 194, \n202, 209, 217, 224, \n232, 239, 247, 254, \n262, 269, 277, 284, \n292, 299, 307, 314, \n322, 329, 337, 344'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/e/ea/Aramid_Fiber.jpg/revision/latest?cb=20181111023304',
  ),
  RnDMaterial(
    name: 'Polyarylate Fiber',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a3/Fiber8.png/revision/latest',
    rarity: 8,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Polyarylate Fiber only appears rarely on Fiber-specific floors in Tengoku above 80F.'),
          Text('Can be bought for 2500 Bloodnium in the Bloodnium Exchange.\n'),
          Text('Fiber-specific Floors',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              '52F+ - TENGOKU \n82, 89, 97, 104, \n112, 119, 127, 134, \n142, 149, 157, 164, \n172, 179, 187, 194, \n202, 209, 217, 224, \n232, 239, 247, 254, \n262, 269, 277, 284, \n292, 299, 307, 314, \n322, 329, 337, 344'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/da/Polyarylate_Fiber.jpg/revision/latest?cb=20181129150928',
  ),
];

List<RnDMaterial> tuber = [
  RnDMaterial(
    name: 'Scratch Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/73/Tuber1.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Scratch Metal drops rarely from Scratch Tuber type enemies, which means it can be found on any floor that spawns Scratch Tubers. Heimo-Jima on floor 6 is an excellent area to find Scratch Metal, as it contains around 25 Scratch Tubers in a single corridor from escalator to escalator. If Heimo-Jima is not in rotation, 19F Chitose-Mei is another good option. It can easily be reached from the elevator on 20F Hachiyanma and tends to have a group of 7-10 Scratch Tubers very close to an escalator - though this escalator isn\'t always going to be the one from Hachiyanma.'),
          Text(
              'Scratch Metal can be bought from the wandering shop, Gyakufunsha, for 10,000 KC.'),
          Text(
              'AdditionEVERYDAYy, you can get Scratch Metal from certain types of Quests.'),
          Text(
              'Alternatively, Tengoku is also a good way to obtain Scratch Metal as red named Haters above 51F drop Tuber Metals via Silver Treasure Chest drops.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/7a/Scratch_Metal.jpg/revision/latest?cb=20181111023549',
  ),
  RnDMaterial(
    name: 'Bullet Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d4/Tuber2.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Bullet Metal can be found on any floor as it is a rare drop from the Bullet Tuber type enemies.'),
          Text(
              'You can also buy Bullet Metal from Gyaku-Funsya where it costs 20,000 KC.'),
          Text(
              'AdditionEVERYDAYy, you can receive Bullet Metal from certain types of Quests.'),
          Text(
              'Recommended going to Mekaroku-Go - 6F to find. By the MEKAROKU-GO to Niko-Senzoku - 8F floor escalator, there are 3 bullet tubers which you can farm by going up & down this escalator repeatedly. Some layouts instead have 3 bullet tubers by the MEKAROKU-GO to Yuki - 7F escalators, or by the Meta-Koya - 8F to Nashiyoguchi - 9F escalators.'),
          Text(
              'Alternatively, Tengoku is also a good way to obtain Bullet Metal, as red-named Haters above 51F drop tuber metals via silver Chests.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/ce/Bullet_Metal.jpg/revision/latest?cb=20181111023833',
  ),
  RnDMaterial(
    name: 'Hovering Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/e/ea/Tuber3.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Hovering Metal can be found in the following locations:'),
          Text('- Rare drop from Hovering Tubers.'),
          Text('- Purchased from Gyakufunsha for 30,000 KC.'),
          Text('- Rewards from certain types of Quests.'),
          Text(
              '- Silver Treasure Chest drops from red-named Haters in Tengoku 51F and above.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/f3/Hovering_Metal.jpg/revision/latest?cb=20181111024015',
  ),
  RnDMaterial(
    name: 'Bone Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/2b/Tuber4.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Bone Metal, like most Tuber Metals are obtained as a rare drop form Bone Tubers'),
          Text('It can also be purchased from Gyakufunsha for 40,000 KC.'),
          Text('It can also obtained as a reward from some Quests.'),
          Text('KAWABE 22F has 4-6 Bone tubers, and 1 Gold chest.'),
          Text(
              'DASAHI-MACHI (accessible at Tuesday) 08F has 5 MK-1 Bone Tubers on an smEVERYDAY floor.'),
          Text('Shimine-Machi 07F has 7-9 MK-1 Bone Tubers in a tunnel.'),
          Text(
              'Alternatively, Tengoku is also a good way to obtain Bone Metal as red named Haters above 51F drop Tuber Metals via Silver Treasure Chest drops.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/f7/Bone_Metal.jpg/revision/latest?cb=20181111024149',
  ),
  RnDMaterial(
    name: 'Reversal Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/bd/Tuber5.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Reversal Metal can be found on any floor as it is a rare drop from the Reversal Tuber type enemies.'),
          Text(
              'You can also buy Reversal Metal from Gyaku-Funsha where it costs 50,000 KC.'),
          Text(
              'AdditionEVERYDAYy you can get Reversal Metal from certain types of Quests.'),
          Text(
              'On 34F Kohashi, there are 3 Reversal Tubers, that can drop Reversal Metal.'),
          Text(
              'Alternatively, Tengoku is also a good way to obtain Reversal Metal as red named Haters above 51F drop Tuber Metals via Silver Treasure Chest drops.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/03/Reversal_Metal.jpg/revision/latest?cb=20181111024333',
  ),
];

List<RnDMaterial> dod = [
  RnDMaterial(
    name: 'D.O.D. ARMS Blue Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/af/DOD_Blue.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'D.O.D. ARMS Blue Metals drop from the D.O.D. ARMS Mid-Boss, COEN, on 3F TAMATA, and from their Don, Max Sharp, on 10F OMENO-SOTO. They may drop damaged D.O.D. ARMS equipment or Kill Coins instead.'),
          Text(
              'Drops in Max\'s Area (1-10F) and Jackson\'s Area (11-20F) from Gold Chests; found in Trap Rooms or from Haters. Above 41F, the Hardcore Haters may rarely drop this from Gold Chests at a low rate. White Steel has a chance to drop this metal on Hard difficulty.'),
          Text(
              'Can be bought for 20000 KC from Gyaku-Funsha, 50000 RE-Points from the R-Point Exchange, or with 4 Death Metals (for x1) / 16 Death Metals (for x5) if appearing in the daily Hernia lineup.'),
          Text(
              'Can be received as a reward from Quests, Bronze Lost Bags, or Platinum / Bronze Box Uncle Prime.'),
          Text(''),
          Text('Available Floors'),
          Text('3F - TAMATA - TUE / WED / SAT / SUN*'),
          Text('Conected to the main elevator'),
          Text('BOSS: COEN'),
          Text('TRAP: Blue Metals, 3 Screamers.'),
          Text('*Floor is up every day, but Trap Room is not.'),
          Text(''),
          Text(
              '3F - KAMI-IKEDOI - EVERYDAY* - TRAP: Blue Metals, 3 Screamers.'),
          Text('*Trap Room does not always spawn.'),
          Text(''),
          Text('3F - OMOKI - WED / FRI / SUN'),
          Text('SHOP: 20000'),
          Text(''),
          Text('5F - DENDEN-CHOFU - TUE / THU / SAT'),
          Text('SHOP: 20000'),
          Text(''),
          Text('6F - MOKA-MAGOME - TUE / WED / FRI / SAT / SUN*'),
          Text('Conected to the main elevator'),
          Text('TRAP: Blue Metals, 5 Screamers.'),
          Text('Floor is up every day, but Trap Room is not.'),
          Text(''),
          Text('7F - MEGASHI-KOYA - MON'),
          Text('SHOP: 20000'),
          Text(''),
          Text('9F - YONEGUCHI - EVERYDAY'),
          Text('SHOP: 20000'),
          Text(''),
          Text('10F - OMENO-SOTO - EVERYDAY'),
          Text('Conected to the main elevator'),
          Text('BOSS: MAX'),
          Text(''),
          Text('11F - NOKEJIRI - MON / WED / THU / FRI / SUN*'),
          Text('TRAP: Green or Blue Metals.'),
          Text('2 Bone Tubers, 1 Screamer.'),
          Text('*Floor is up every day, but Trap Room is not.'),
          Text(''),
          Text('18F - TEMO-UMA - EVERYDAY'),
          Text('TRAP: Green or Blue Metals.'),
          Text('Mk-3 Bullet, Bone Tuber, Screamer.'),
          Text(''),
          Text('19F - CHITOSE-MEI - MON / TUE / WED / FRI / SAT / SUN*'),
          Text('TRAP: Green or Blue Metals.'),
          Text('5 Screamers.'),
          Text('*Floor is up every day, but Trap Room is not.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a0/D.O.D._ARMS_Blue_Metal.jpg/revision/latest?cb=20181111024857',
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Green Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/29/DOD_Green.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'D.O.D. ARMS Green Metals do not drop from a mid-boss, so they only naturEVERYDAYy drop from Trap Rooms and Haters.'),
          Text(''),
          Text(
              'Drops in Jackson\'s Area (11-20F) and Crowley\'s Area (21-30F) from Gold Chests; found in Trap Rooms or from Haters. Above 41F, the Hardcore Haters may rarely drop this from Gold Chests at a low rate. White Steel has a chance to drop this metal on Hard difficulty.'),
          Text(''),
          Text(
              'Can be bought for 30000 KC from Gyaku-Funsha, 75000 RE-Points from the R-Point Exchange, or with 6 Death Metals (for x1) / 24 Death Metals (for x5) Death Metals if appearing in the daily Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from Quests, Bronze / Silver / Gold Lost Bags, or Bronze / Silver Box Uncle Prime.'),
          Text(''),
          Text('Available Floors'),
          Text('3F - OMOKI - WED / FRI / SUN'),
          Text('SHOP: 30000 KC'),
          Text(''),
          Text('11F - NOKEJIRI - MON / WED / THU / FRI / SUN*'),
          Text('TRAP: Green or Blue Metals.'),
          Text('2 Bone Tubers, 1 Screamer.'),
          Text('*Floor is up every day, but Trap Room is not.'),
          Text(''),
          Text('14F - KOSHI-TAGAWA - MON / TUE / WED / THU / SAT / SUN'),
          Text('SHOP: 30000 KC'),
          Text(''),
          Text('17F - NUTAKOEN - MON / TUE / THU / FRI / SAT'),
          Text('SHOP: 30000 KC'),
          Text(''),
          Text('18F - TEMO-UMA - EVERYDAY'),
          Text('TRAP: Green or Blue Metals.'),
          Text('Mk-3 Bullet, Bone Tuber, Screamer.'),
          Text(''),
          Text('19F - CHITOSE-MEI - MON / TUE / WED / FRI / SAT / SUN*'),
          Text('TRAP: Green or Blue Metals.'),
          Text('5 Screamers.'),
          Text('*Floor is up every day, but Trap Room is not.'),
          Text(''),
          Text('22F - KAWABE - EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Two Mk-3 Bone, one Screamer.'),
          Text(''),
          Text('28F - HYAKUDA - EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Five Screamers, one at a time.'),
          Text(''),
          Text('28F - HYAKKOKU - EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Four Mk-4 Scratch, one Mk-4 Hover, a Screamer.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/82/D.O.D._ARMS_Green_Metal.jpg/revision/latest?cb=20181111025047',
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Black Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a6/DOD_Black.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'D.O.D. ARMS Black Metals drop from the D.O.D. ARMS Mid-Boss, COEN, on 26F OSHIMI. He may drop damaged D.O.D. ARMS equipment or Kill Coins instead.'),
          Text(''),
          Text(
              'Drops in Crowley\'s Area (21-30F) and Gunkanyama\'s Area (31-40F) from Gold Chests; found in Trap Rooms or from Haters. In the Battle To The Top area (41F+), this metal may be found in Gold Chests from the Treasure Rooms on dead-end floors. Hardcore Haters above 41F and in Tengoku may drop this from Gold Chests at a low rate. White Steel has a chance to drop this metal on Hard difficulty.'),
          Text(''),
          Text(
              'Can be bought for 40000 KC from Gyaku-Funsha, 100000 RE-Points from the R-Point Exchange, or with 8 Death Metals (for x1) / 32 Death Metals (for x5) if appearing in the daily Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from Quests, Silver / Gold Lost Bags, or Silver / Gold Box Uncle Prime.'),
          Text(''),
          Text('Available Floors'),
          Text(''),
          Text('22F - KAWABE - EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Two Mk-3 Bone, one Screamer.'),
          Text(''),
          Text('24F - MORIBA - EVERYDAY'),
          Text('SHOP: 40000 KC'),
          Text(''),
          Text('26F - OSHIMI - EVERYDAY'),
          Text('BOSS: COEN'),
          Text(''),
          Text('27F - DAIMON-MACHI - TUE / SAT'),
          Text('SHOP: 40000 KC'),
          Text(''),
          Text('27F - YUKIYOSHI - WED / FRI / SUN'),
          Text('SHOP: 40000 KC'),
          Text(''),
          Text('28F - HYAKUDA - EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Five Screamers, one at a time.'),
          Text(''),
          Text('28F - HYAKKOKU - EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Four Mk-4 Scratch, one Mk-4 Hover, a Screamer.'),
          Text(''),
          Text('29F - TEMAE-JIMA - MON'),
          Text('SHOP: 40000 KC'),
          Text(''),
          Text('32F - KOSHI-YAMA - EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('Mk-4 Bone Tuber, two Screamers.'),
          Text(''),
          Text('35F - WAKABA - EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('4 Mk-5 Scratch, Mk-5 Hover, a Screamer.'),
          Text(''),
          Text('39F - HARATSUKA - EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('Five Screamers one after another.'),
          Text(''),
          Text('45F - DOAME - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('45F - GIOU - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('46F - TAHEI - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('47F - SAMINO - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('48F - KIBARASE - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('48F - JUSENJU - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('49F - FUWA - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('49F - NERI - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('50F - NAKA-WARA - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Leads to 51F TENGOKUMON.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/03/D.O.D._ARMS_Black_Metal.jpg/revision/latest?cb=20181111025222',
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Red Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d0/DOD_Red.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'D.O.D. ARMS Red Metals drop from the D.O.D. ARMS Mid-Boss, COEN, on 34F NITANDA. He may drop damaged D.O.D. ARMS equipment or Kill Coins instead.'),
          Text(''),
          Text(
              'Drops in Gunkanyama\'s Area (31-40F) from Gold Chests; found in Trap Rooms or from Haters. In the Battle To The Top area (41F+), this metal may be found in Gold Chests from the Treasure Rooms on dead-end floors. Hardcore Haters above 41F and in Tengoku may drop this from Gold Chests at a low rate. White Steel has a chance to drop this metal on Hard difficulty.'),
          Text(''),
          Text(
              'Red Metals may be a reward in Tengoku up to (and including) 100F. They may be in Gold Chests (but not the Legendary Chest) on Boss Floors, or drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate.'),
          Text(''),
          Text(
              'Can be bought for KC.png 50000 KC from Gyaku-Funsha, RE-Points 125000 RE-Points from the R-Point Exchange, or with DM.png 10 (for x1) / 40 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from Quests, Gold / Platinum Lost Bags, or Gold Box Uncle Prime.'),
          Text(''),
          Text('Available Floors'),
          Text(''),
          Text('27F - YUKIYOSHI - WED / FRI / SUN'),
          Text('SHOP: 50000 KC'),
          Text(''),
          Text('32F - KOSHI-YAMA - EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('Mk-4 Bone Tuber, two Screamers.'),
          Text(''),
          Text('33F - UCHINOBU - EVERYDAY'),
          Text('SHOP: 50000 KC'),
          Text(''),
          Text('34F - NITANDA - EVERYDAY'),
          Text('BOSS: COEN'),
          Text(''),
          Text('35F - WAKABA - EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('4 Mk-5 Scratch, Mk-5 Hover, a Screamer.'),
          Text(''),
          Text('38F - YATAKA-CHO - EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('Five Screamers one after another.'),
          Text(''),
          Text('39F - HARATSUKA - EVERYDAY'),
          Text('SHOP: 50000 KC'),
          Text(''),
          Text('45F - DOAME - EVERYDAY - Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('45F - GIOU - EVERYDAY'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('46F - TAHEI - EVERYDAY'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('47F - SAMINO - EVERYDAY'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('48F - KIBARASE - EVERYDAY'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('48F - JUSENJU - EVERYDAY'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('49F - FUWA - EVERYDAY'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('49F - NERI - EVERYDAY'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('50F - NAKA-WARA - EVERYDAY - Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Leads to 51F TENGOKUMON.'),
          Text(''),
          Text(
              '55F-100F - TENGOKU - EVERYDAY - Every 5th floor (55, 60, 65 etc.) up to 100F.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/90/D.O.D._ARMS_Red_Metal.jpg/revision/latest?cb=20181111025602',
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Purple Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/e/e9/DOD_Purple.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'D.O.D. ARMS Purple Metals start to drop in the Battle To The Top area (41F+), from Gold Chests in the Treasure Rooms on dead-end floors, or from Hardcore Haters. TypicEVERYDAYy, this means you have a chance at 1 Purple metal per run.'),
          Text(''),
          Text(
              'In Tengoku, Purple Metals appear as Legendary Chest rewards, though will stop appearing in them after 100F. They can still appear as Gold Chest rewards at any point. They can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate. Due to the nature of Tengoku rewards, many more Purple metals can be obtained at once compared to runs in the 40\'s.'),
          Text(''),
          Text(
              'Can be bought for 150000 RE-Points from the R-Point Exchange, 6000 Bloodnium in the Bloodnium Exchange, or with 12 Death Metals (for x1) / 48 Death Metals (for x5) if appearing in the daily Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from annual Event Quests or Gold / Platinum Lost Bags.'),
          Text(''),
          Text('Available Floors'),
          Text(''),
          Text('45F - DOAME - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('45F - GIOU - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('46F - TAHEI - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('47F - SAMINO - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('48F - KIBARASE - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('48F - JUSENJU - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('49F - FUWA - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('49F - NERI - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('50F - NAKA-WARA - EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Leads to 51F TENGOKUMON.'),
          Text(''),
          Text('55F+ - TENGOKU - EVERYDAY'),
          Text('Every 5th floor (55, 60, 65 etc.).'),
          Text('Not in Legendary Chests after 100F.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/57/D.O.D._ARMS_Purple_Metal.jpg/revision/latest?cb=20181111025736',
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Orange Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b9/DOD_Orange.png/revision/latest',
    rarity: 6,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Orange Metals only appear in Tengoku. They can appear right away as a "rare" Legendary Chest reward, but become a "common" reward above 100F. They can appear as Gold Chest rewards at any point, and can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate.'),
          Text(''),
          Text(
              'Can be bought for 7000 Bloodnium in the Bloodnium Exchange, or with 14 Death Metals (for x1) / 56 Death Metals (for x5) if appearing in the daily Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from annual Event Quests or Platinum Lost Bags.'),
          Text(''),
          Text('Available Floors'),
          Text('55F+ - TENGOKU - EVERYDAY'),
          Text('Every 5th floor (55, 60, 65 etc.).'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/06/D.O.D._ARMS_Orange_Metal.jpg/revision/latest?cb=20181111025915',
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Platinum Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/6c/DOD_Platinum.png/revision/latest',
    rarity: 7,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Platinum Metals only appear in Tengoku, starting at 80F. They can appear as rare Legendary Chest rewards, and can also appear as Gold Chest rewards. At 80F or above, they can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them above 80F, but at a much, much lower rate.'),
          Text(''),
          Text('Can be bought for 8000 Bloodnium in the Bloodnium Exchange.'),
          Text(''),
          Text('Available Floors'),
          Text('80F+ - TENGOKU - EVERYDAY'),
          Text('Every 5th floor (80, 85, 90 etc.).'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d1/D.O.D._ARMS_Platinum_Metal.jpg/revision/latest?cb=20181129151027',
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS 44CE Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/87/DOD_44CE.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'D.O.D. ARMS 44CE Metal can only drop from the D.O.D. ARMS Forcemen, White Steel, after defeating him on Nightmare difficulty on 8F KO-ONI. Forcemen may be fought for free on each difficulty once per day.'),
          Text(''),
          Text('Can also be received as a reward from monthly Season Quests.'),
          Text(''),
          Text('Available Floors'),
          Text('8F - KO-ONI - WED / SUN'),
          Text('BOSS: White Steel - Nightmare.'),
          Text('Entry Fee: 100000 KC'),
        ],
      ),
    ),
    urlFullImage:
        'https://raw.githubusercontent.com/yamatoguro/lid_companion_images/main/dod_44ce.png',
  ),
];

List<RnDMaterial> we = [
  RnDMaterial(
    name: 'War Ensemble Blue Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/66/WE_Blue.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'War Ensemble Blue Metals drop from the War Ensemble Mid-Boss, JIN-DIE, on 6F MOKA-MAGOME. She may drop damaged War Ensemble equipment or Kill Coins instead.'),
          Text(''),
          Text(
              'Drops in Max\'s Area (1-10F) and Jackson\'s Area (11-20F) from Gold Chests; found in Trap Rooms or from Haters. Above 41F, the Hardcore Haters may rarely drop this from Gold Chests at a low rate. White Steel and Red Napalm have a chance to drop this metal on Hard difficulty.'),
          Text(''),
          Text(
              'Can be bought for 20000 KC from Gyaku-Funsha, 50000 RE-Points from the R-Point Exchange, or with 4 Death Metals (for x1) / 16 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from Quests, Bronze Lost Bags, or Platinum / Bronze Box Uncle Prime.'),
          Text(''),
          Text('Available Floors'),
          Text('3F - TAMATA - TUE / WED / SAT / SUN'),
          Text('Floor is connect to the main elevator'),
          Text('TRAP: Blue Metals, 3 Screamers.'),
          Text('Floor is up every day, but Trap Room is not.'),
          Text('3F - KAMI-IKEDOI - EVERYDAY'),
          Text('TRAP: Blue Metals, 3 Screamers.'),
          Text('Trap Room does not always spawn.'),
          Text('3F - OMOKI - WED / FRI / SUN'),
          Text('SHOP: 20000'),
          Text('5F - DENDEN-CHOFU - TUE / THU / SAT '),
          Text('SHOP: 20000'),
          Text('6F - MOKA-MAGOME - EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('BOSS: JIN-DIE'),
          Text('6F - MOKA-MAGOME - TUE / WED / FRI / SAT / SUN'),
          Text('Floor is connect to the main elevator'),
          Text('TRAP: Blue Metals, 5 Screamers.'),
          Text('Floor is up every day, but Trap Room is not.'),
          Text('7F - MEGASHI-KOYA - MON  '),
          Text('SHOP: 20000'),
          Text('9F - YONEGUCHI - EVERYDAY'),
          Text('SHOP: 20000'),
          Text('11F - NOKEJIRI - MON / WED / THU/ FRI / SUN '),
          Text('TRAP: Green or Blue Metals.'),
          Text('2 Bone Tubers, 1 Screamer.'),
          Text('Floor is up every day, but Trap Room is not.'),
          Text('18F - TEMO-UMA - EVERYDAY'),
          Text('TRAP: Green or Blue Metals.'),
          Text('Mk-3 Bullet, Bone Tuber, Screamer.'),
          Text('19F - CHITOSE-MEI - MON / TUE / WED/ FRI / SAT / SUN'),
          Text('TRAP: Green or Blue Metals.'),
          Text('5 Screamers.'),
          Text('Floor is up every day, but Trap Room is not.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/0d/War_Ensemble_Blue_Metal.jpg/revision/latest?cb=20181111030930',
  ),
  RnDMaterial(
    name: 'War Ensemble Green Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/64/WE_Green.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'War Ensemble Green Metals drop from the War Ensemble Mid-Boss, JIN-DIE, on 16F KAGA, and from their Don, Colonel Jackson, on 20F HACHIYANMA. They may drop damaged War Ensemble '),
          Text('equipment or Kill Coins instead.'),
          Text(''),
          Text(
              'Drops in Jackson\'s Area (11-20F) and Crowley\'s Area (21-30F) from Gold Chests; found in Trap Rooms or from Haters. Above 41F, the Hardcore Haters may rarely drop this from '),
          Text(
              'Gold Chests at a low rate. White Steel and Red Napalm have a chance to drop this metal on Hard difficulty.'),
          Text(''),
          Text(
              'Can be bought for 30000 KC from Gyaku-Funsha, 75000 RE-Points from the R-Point Exchange, or with 6 Death Metals (for x1) / 24 (for x5) Death Metals if appearing in the daily '),
          Text('Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from Quests, Bronze / Silver / Gold Lost Bags, or Bronze / Silver Box Uncle Prime.'),
          Text(''),
          Text('Available Floors'),
          Text('3F	OMOKI	WED / FRI / SUN'),
          Text('SHOP: 30000'),
          Text('11F	NOKEJIRI	MON / WED / THU / FRI / SUN'),
          Text('TRAP: Green or Blue Metals.'),
          Text('2 Bone Tubers, 1 Screamer.'),
          Text('Floor is up every day, but Trap Room is not.'),
          Text('14F	KOSHI-TAGAWA	MON / TUE / WED / THU / SAT / SUN'),
          Text('SHOP: 30000'),
          Text('16F	KAGA	EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('BOSS: JIN-DIE'),
          Text('17F	NUTAKOEN	MON / TUE / THU / FRI / SAT'),
          Text('SHOP: 30000'),
          Text('18F	TEMO-UMA	EVERYDAY'),
          Text('TRAP: Green or Blue Metals.'),
          Text('Mk-3 Bullet, Bone Tuber, Screamer.'),
          Text('19F	CHITOSE-MEI	MON / TUE / WED / FRI / SAT / SUN'),
          Text('TRAP: Green or Blue Metals.'),
          Text('5 Screamers.'),
          Text('Floor is up every day, but Trap Room is not.'),
          Text('20F	HACHIYANMA	EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('BOSS: JACKSON'),
          Text('22F	KAWABE	EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Two Mk-3 Bone, one Screamer.'),
          Text('28F	HYAKUDA	EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Five Screamers, one at a time.'),
          Text('28F	HYAKKOKU	EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Four Mk-4 Scratch, one Mk-4 Hover, a Screamer.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/03/War_Ensemble_Green_Metal.jpg/revision/latest?cb=20181111031049',
  ),
  RnDMaterial(
    name: 'War Ensemble Black Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/fa/WE_Black.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'War Ensemble Black Metals drop from the War Ensemble Mid-Boss, JIN-DIE, on 26F SHIMEMENO. She may drop damaged War Ensemble weapons or Kill Coins instead.'),
          Text(''),
          Text(
              'NOTE: Killing JIN-DIE on top of the pillars in the arena will leave the Metal unreachable.'),
          Text(
              'Drops in Crowley\'s Area (21-30F) and Gunkanyama\'s Area (31-40F) from Gold Chests; found in Trap Rooms or from Haters. In the Battle To The Top area (41F+), this metal may be found in Gold Chests from the Treasure Rooms on dead-end floors. Hardcore Haters above 41F and in Tengoku may drop this from Gold Chests at a low rate. White Steel and Red Napalm have a chance to drop this metal on Hard difficulty.'),
          Text(''),
          Text(
              'Can be bought for 40000 KC from Gyaku-Funsha, 100000 RE-Points from the R-Point Exchange, or with 8 Death Metals (for x1) / 32 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from Quests, Silver / Gold Lost Bags, or Silver / Gold Box Uncle Prime.'),
          Text(''),
          Text('Available Floors'),
          Text('22F	KAWABE	EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Two Mk-3 Bone, one Screamer.'),
          Text('24F	MORIBA	EVERYDAY'),
          Text('SHOP: 40000'),
          Text('26F	SHIMEMENO	EVERYDAY'),
          Text('BOSS: JIN-DIE'),
          Text('27F	DAIMON-MACHI	TUE / SAT'),
          Text('SHOP: 40000'),
          Text('27F	YUKIYOSHI	WED / FRI / SUN'),
          Text('SHOP: 40000'),
          Text('28F	HYAKUDA	EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Five Screamers, one at a time.'),
          Text('28F	HYAKKOKU	EVERYDAY'),
          Text('TRAP: Black or Green Metals.'),
          Text('Four Mk-4 Scratch, one Mk-4 Hover, a Screamer.'),
          Text('29F	TEMAE-JIMA	MON'),
          Text('SHOP: 40000'),
          Text('32F	KOSHI-YAMA	EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('Mk-4 Bone Tuber, two Screamers.'),
          Text('35F	WAKABA	EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('4 Mk-5 Scratch, Mk-5 Hover, a Screamer.'),
          Text('39F	HARATSUKA	EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('Five Screamers one after another.'),
          Text('45F	DOAME	EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text('45F	GIOU	EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('46F	TAHEI	EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('47F	SAMINO	EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('48F	KIBARASE	EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('48F	JUSENJU	EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('49F	FUWA	EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('49F	NERI	EVERYDAY'),
          Text('Floor is connect to the main elevator'),
          Text('50F	NAKA-WARA	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Leads to 51F TENGOKUMON.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/8a/War_Ensemble_Black_Metal.jpg/revision/latest?cb=20181111031140',
  ),
  RnDMaterial(
    name: 'War Ensemble Red Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/70/WE_Red.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'War Ensemble Red Metals drop from the War Ensemble Mid-Boss, JIN-DIE, on 38F EBATA. She may drop damaged War Ensemble weapons or Kill Coins instead.'),
          Text(''),
          Text(
              'NOTE: Killing JIN-DIE in one of the higher spots of the arena will leave the Metal unreachable.'),
          Text(
              'Drops in Gunkanyama\'s Area (31-40F) from Gold Chests; found in Trap Rooms or from Haters. In the Battle To The Top area (41F+), this metal may be found in Gold Chests from the Treasure Rooms on dead-end floors. Hardcore Haters above 41F and in Tengoku may drop this from Gold Chests at a low rate. White Steel and Red Napalm have a chance to drop this metal on Hard difficulty.'),
          Text(''),
          Text(
              'Red Metals may be a reward in Tengoku up to (and including) 100F. They may be in Gold Chests (but not the Legendary Chest) on Boss Floors, or drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate.'),
          Text(''),
          Text(
              'Can be bought for 50000 KC from Gyaku-Funsha, 125000 RE-Points from the R-Point Exchange, or with 10 Death Metals (for x1) / 40 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from Quests, Gold / Platinum Lost Bags, or Gold Box Uncle Prime.'),
          Text(''),
          Text('Available Floors'),
          Text('27F	YUKIYOSHI	WED / FRI / SUN'),
          Text('SHOP: 50000'),
          Text(''),
          Text('32F	KOSHI-YAMA	EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('Mk-4 Bone Tuber, two Screamers.'),
          Text(''),
          Text('33F	UCHINOBU	EVERYDAY'),
          Text('SHOP: 50000'),
          Text(''),
          Text('35F	WAKABA	EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('4 Mk-5 Scratch, Mk-5 Hover, a Screamer.'),
          Text(''),
          Text('38F	YATAKA-CHO	EVERYDAY'),
          Text('TRAP: Red or Black Metals.'),
          Text('Five Screamers one after another.'),
          Text(''),
          Text('38F	EBATA	EVERYDAY'),
          Text('BOSS: JIN-DIE'),
          Text(''),
          Text('39F	HARATSUKA	EVERYDAY'),
          Text('SHOP: 50000'),
          Text(''),
          Text('45F	DOAME	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('45F	GIOU	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('46F	TAHEI	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('47F	SAMINO	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('48F	KIBARASE'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('48F	JUSENJU	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('49F	FUWA	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('49F	NERI	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text(''),
          Text('50F	NAKA-WARA'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Leads to 51F TENGOKUMON.'),
          Text(''),
          Text('55F - 100F	TENGOKU	EVERYDAY'),
          Text('Every 5th floor (55, 60, 65 etc.) up to 100F.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/7a/War_Ensemble_Red_Metal.jpg/revision/latest?cb=20181111031218',
  ),
  RnDMaterial(
    name: 'War Ensemble Purple Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/94/WE_Purple.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'War Ensemble Purple Metals start to drop in the Battle To The Top area (41F+), from Gold Chests in the Treasure Rooms on dead-end floors, or from Hardcore Haters. Typically, this means you have a chance at 1 Purple metal per run.'),
          Text(''),
          Text(
              'In Tengoku, Purple Metals appear as Legendary Chest rewards, though will stop appearing in them after 100F. They can still appear as Gold Chest rewards at any point. They can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate. Due to the nature of Tengoku rewards, many more Purple metals can be obtained at once compared to runs in the 40\'s.'),
          Text(''),
          Text(
              'Can be bought for 150000 RE-Points from the R-Point Exchange, 6000 Bloodnium in the Bloodnium Exchange, or with 12 Death Metals (for x1) / 48 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from annual Event Quests or Gold / Platinum Lost Bags.'),
          Text(''),
          Text('Available Floors'),
          Text('45F	DOAME	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text('45F	GIOU	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text('46F	TAHEI	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text('47F	SAMINO	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text('48F	KIBARASE	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text('48F	JUSENJU	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text('49F	FUWA	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text('49F	NERI	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Will return you to the Waiting Room.'),
          Text('50F	NAKA-WARA	EVERYDAY'),
          Text('Treasure Room.'),
          Text('Chest has a Purple, Red or Black Metal.'),
          Text('Leads to 51F TENGOKUMON.'),
          Text('55F+	TENGOKU	EVERYDAY'),
          Text('Every 5th floor (55, 60, 65 etc.).'),
          Text('Not in Legendary Chests after 100F.'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/4c/War_Ensemble_Purple_Metal.jpg/revision/latest?cb=20181111031239',
  ),
  RnDMaterial(
    name: 'War Ensemble Orange Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/18/WE_Orange.png/revision/latest',
    rarity: 6,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Orange Metals only appear in Tengoku. They can appear right away as a "rare" Legendary Chest reward, but become a "common" reward above 100F. They can appear as Gold Chest rewards at any point, and can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate.'),
          Text(''),
          Text(
              'Can be bought for 7000 Bloodnium in the Bloodnium Exchange, or with 14 Death Metals (for x1) / 56 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
          Text(''),
          Text(
              'Can be received as a reward from annual Event Quests or Platinum Lost Bags.'),
          Text(''),
          Text('Available Floors'),
          Text(''),
          Text('55F+	TENGOKU	EVERYDAY'),
          Text('Every 5th floor (55, 60, 65 etc.).'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/2b/War_Ensemble_Orange_Metal.jpg/revision/latest?cb=20181111031304',
  ),
  RnDMaterial(
    name: 'War Ensemble Platinum Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d5/WE_Platinum.png/revision/latest',
    rarity: 7,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              'Platinum Metals only appear in Tengoku, starting at 80F. They can appear as rare Legendary Chest rewards, and can also appear as Gold Chest rewards. At 80F or above, they can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them above 80F, but at a much, much lower rate.'),
          Text(''),
          Text('Can be bought for 8000 Bloodnium in the Bloodnium Exchange.'),
          Text(''),
          Text('Available Floors'),
          Text('80F+	TENGOKU	EVERYDAY'),
          Text('Every 5th floor (80, 85, 90 etc.).'),
        ],
      ),
    ),
    urlFullImage:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/4d/War_Ensemble_Platinum_Metal.jpg/revision/latest?cb=20181129151050',
  ),
  RnDMaterial(
    name: 'War Ensemble 44CE Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/8d/WE_44CE.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [],
      ),
    ),
  ),
];

List<RnDMaterial> cw = [
  RnDMaterial(
    name: 'Candle Wolf Blue Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/14/CW_Blue.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
Text('Candle Wolf Blue Metals do not drop from a mid-boss, so they only naturally drop from Trap Rooms and Haters.'),
Text(''),
Text('Drops in Max\'s Area (1-10F) and Jackson\'s Area (11-20F) from Gold Chests; found in Trap Rooms or from Haters. Above 41F, the Hardcore Haters may rarely drop this from Gold Chests at a low rate. White Steel and Black Thunder have a chance to drop this metal on Hard difficulty.'),
Text(''),
Text('Can be bought for 20000 KC from Gyaku-Funsha, 50000 RE-Points from the R-Point Exchange, or with 4 Death Metals (for x1) / 16 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from Quests, Bronze Lost Bags, or Platinum / Bronze Box Uncle Prime.'),
Text(''),
Text('Available Floors'),
Text('3F	TAMATA	TUE / WED / SAT / SUN'),
Text('Floor is connect to the main elevator'),
Text('TRAP: Blue Metals, 3 Screamers.'),
Text('Floor is up every day, but Trap Room is not.'),
Text('3F	KAMI-IKEDOI	EVERYDAY'),
Text('TRAP: Blue Metals, 3 Screamers.'),
Text('Trap Room does not always spawn.'),
Text('3F	OMOKI	WED / FRI / SUN'),
Text('SHOP: 20000'),
Text('5F	DENDEN-CHOFU	TUE / THU / SAT'),
Text('SHOP: 20000'),
Text('6F	MOKA-MAGOME	TUE / WED / FRI / SAT / SUN'),
Text('Floor is connect to the main elevator'),
Text('TRAP: Blue Metals, 5 Screamers.'),
Text('Floor is up every day, but Trap Room is not.'),
Text('7F	MEGASHI-KOYA	MON'),
Text('SHOP: 20000'),
Text('9F	YONEGUCHI	EVERYDAY'),
Text('SHOP: 20000'),
Text('11F	NOKEJIRI	MON / WED / THU / FRI / SUN'),
Text('TRAP: Green or Blue Metals.'),
Text('2 Bone Tubers, 1 Screamer.'),
Text('Floor is up every day, but Trap Room is not.'),
Text('18F	TEMO-UMA EVERYDAY'),
Text('TRAP: Green or Blue Metals.'),
Text('Mk-3 Bullet, Bone Tuber, Screamer.'),
Text('19F	CHITOSE-MEI	MON / TUE / WED / FRI / SAT / SUN'),
Text('TRAP: Green or Blue Metals.'),
Text('5 Screamers.'),
Text('Floor is up every day, but Trap Room is not.'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/98/Candle_Wolf_Blue_Metal.jpg/revision/latest?cb=20181111031340',
  ),
  RnDMaterial(
    name: 'Candle Wolf Green Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/40/CW_Green.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Candle Wolf Green Metals drop from the Candle Wolf Mid-Boss, GOTO-9, on 11F MAKA-TSUTSUMI. He may drop damaged Candle Wolf equipment or Kill Coins instead.'),
Text(''),
Text('Drops in Jackson\'s Area (11-20F) and Crowley\'s Area (21-30F) from Gold Chests; found in Trap Rooms or from Haters. Above 41F, the Hardcore Haters may rarely drop this from Gold Chests at a low rate. White Steel and Black Thunder have a chance to drop this metal on Hard difficulty.'),
Text(''),
Text('Can be bought for 30000 KC from Gyaku-Funsha, 75000 RE-Points from the R-Point Exchange, or with 6 Death Metals (for x1) / 24 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from Quests, Bronze / Silver / Gold Lost Bags, or Bronze / Silver Box Uncle Prime.'),
Text(''),
Text('Available Floors'),
Text('3F	OMOKI	WED / FRI / SUN'),
Text('SHOP: 30000'),
Text('11F	MAKA-TSUTSUMI EVERYDAY'),
Text('Floor is connect to the main elevator'),
Text('BOSS: GOTO-9'),
Text('11F	NOKEJIRI	MON / WED / THU / FRI / SUN'),
Text('TRAP: Green or Blue Metals.'),
Text('2 Bone Tubers, 1 Screamer.'),
Text('Floor is up every day, but Trap Room is not.'),
Text('14F	KOSHI-TAGAWA	MON / TUE / WED / THU / SAT / SUN'),
Text('SHOP: 30000'),
Text('17F	NUTAKOEN	MON / TUE / THU / FRI / SAT'),
Text('SHOP: 30000'),
Text('18F	TEMO-UMA EVERYDAY'),
Text('TRAP: Green or Blue Metals.'),
Text('Mk-3 Bullet, Bone Tuber, Screamer.'),
Text('19F	CHITOSE-MEI	MON / TUE / WED / FRI / SAT / SUN'),
Text('TRAP: Green or Blue Metals.'),
Text('5 Screamers.'),
Text('Floor is up every day, but Trap Room is not.'),
Text('20F	HACHIYANMA EVERYDAY'),
Text('Floor is connect to the main elevator'),
Text('BOSS: JACKSON'),
Text('22F	KAWABE EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Two Mk-3 Bone, one Screamer.'),
Text('28F	HYAKUDA EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Five Screamers, one at a time.'),
Text('28F	HYAKKOKU EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Four Mk-4 Scratch, one Mk-4 Hover, a Screamer.'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b4/Candle_Wolf_Green_Metal.jpg/revision/latest?cb=20181111031358',
  ),
  RnDMaterial(
    name: 'Candle Wolf Black Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d9/CW_Black.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Candle Wolf Black Metals drop from the Candle Wolf Mid-Boss, GOTO-9, on 23F ECHIZEN-JIMA, and from their Don, Mr. Crowley, on 30F SAIGETSU. They may drop damaged Candle Wolf equipment or Kill Coins instead.'),
Text(''),
Text('Drops in Crowley\'s Area (21-30F) and Gunkanyama\'s Area (31-40F) from Gold Chests; found in Trap Rooms or from Haters. In the Battle To The Top area (41F+), this metal may be found in Gold Chests from the Treasure Rooms on dead-end floors. Hardcore Haters above 41F and in Tengoku may drop this from Gold Chests at a low rate. White Steel and Black Thunder have a chance to drop this metal on Hard difficulty.'),
Text(''),
Text('Can be bought for KC 40000 KC from Gyaku-Funsha, RE-Points 100000 RE-Points from the R-Point Exchange, or with DM 8 (for x1) / 32 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from Quests, Silver / Gold Lost Bags, or Silver / Gold Box Uncle Prime.'),
Text(''),
Text('Available Floors'),
Text('22F	KAWABE	EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Two Mk-3 Bone, one Screamer.'),
Text('23F	ECHIZEN-JIMA	EVERYDAY'),
Text('Floor is connect to the main elevator'),
Text('BOSS: GOTO-9'),
Text('24F	MORIBA	EVERYDAY'),
Text('SHOP: 40000'),
Text('27F	DAIMON-MACHI	TUE / SAT'),
Text('SHOP: 40000'),
Text('27F	YUKIYOSHI	WED / FRI / SUN'),
Text('SHOP: 40000'),
Text('28F	HYAKUDA	EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Five Screamers, one at a time.'),
Text('28F	HYAKKOKU	EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Four Mk-4 Scratch, one Mk-4 Hover, a Screamer.'),
Text('29F	TEMAE-JIMA	MON'),
Text('SHOP: 40000'),
Text('30F	SAIGETSU	EVERYDAY'),
Text('Floor is connect to the main elevator'),
Text('BOSS: CROWLEY'),
Text('32F	KOSHI-YAMA	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('Mk-4 Bone Tuber, two Screamers.'),
Text('35F	WAKABA	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('4 Mk-5 Scratch, Mk-5 Hover, a Screamer.'),
Text('39F	HARATSUKA	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('Five Screamers one after another.'),
Text('45F	DOAME	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('45F	GIOU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('46F	TAHEI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('47F	SAMINO	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	KIBARASE	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	JUSENJU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	FUWA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	NERI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('50F	NAKA-WARA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Leads to 51F TENGOKUMON.'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d9/Candle_Wolf_Black_Metal.jpg/revision/latest?cb=20181111031418',
  ),
  RnDMaterial(
    name: 'Candle Wolf Red Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/ae/CW_Red.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
Text('Candle Wolf Red Metals drop from the Candle Wolf Mid-Boss, GOTO-9, on 36F ITANODAI. He may drop damaged Candle Wolf equipment or Kill Coins instead.'),
Text(''),
Text('Drops in Gunkanyama\'s Area (31-40F) from Gold Chests; found in Trap Rooms or from Haters. In the Battle To The Top area (41F+), this metal may be found in Gold Chests from the Treasure Rooms on dead-end floors. Hardcore Haters above 41F and in Tengoku may drop this from Gold Chests at a low rate. White Steel and Black Thunder have a chance to drop this metal on Hard difficulty.'),
Text(''),
Text('Red Metals may be a reward in Tengoku up to (and including) 100F. They may be in Gold Chests (but not the Legendary Chest) on Boss Floors, or drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate.'),
Text(''),
Text('Can be bought for KC 50000 KC from Gyaku-Funsha, 125000 RE-Points from the R-Point Exchange, or with 10 Death Metals (for x1) / 40 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from Quests, Gold / Platinum Lost Bags, or Gold Box Uncle Prime.'),
Text(''),
Text('Available Floors'),
Text('27F	YUKIYOSHI	WED / FRI / SUN'),
Text('SHOP: 50000'),
Text('32F	KOSHI-YAMA	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('Mk-4 Bone Tuber, two Screamers.'),
Text('33F	UCHINOBU	EVERYDAY'),
Text('SHOP: 50000'),
Text('35F	WAKABA	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('4 Mk-5 Scratch, Mk-5 Hover, a Screamer.'),
Text('36F	ITANODAI	EVERYDAY'),
Text('BOSS: GOTO-9'),
Text('38F	YATAKA-CHO	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('Five Screamers one after another.'),
Text('39F	HARATSUKA	EVERYDAY'),
Text('SHOP: 50000'),
Text('45F	DOAME	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('45F	GIOU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('46F	TAHEI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('47F	SAMINO	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	KIBARASE	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	JUSENJU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	FUWA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	NERI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('50F	NAKA-WARA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Leads to 51F TENGOKUMON.'),
Text('55F - 100F	TENGOKU	EVERYDAY'),
Text('Every 5th floor (55, 60, 65 etc.) up to 100F.'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/59/Candle_Wolf_Red_Metal.jpg/revision/latest?cb=20181111031440',
  ),
  RnDMaterial(
    name: 'Candle Wolf Purple Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/60/CW_Purple.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Candle Wolf Purple Metals start to drop in the Battle To The Top area (41F+), from Gold Chests in the Treasure Rooms on dead-end floors, or from Hardcore Haters. Typically, this means you have a chance at 1 Purple metal per run.'),
Text(''),
Text('In Tengoku, Purple Metals appear as Legendary Chest rewards, though will stop appearing in them after 100F. They can still appear as Gold Chest rewards at any point. They can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate. Due to the nature of Tengoku rewards, many more Purple metals can be obtained at once compared to runs in the 40\'s.'),
Text(''),
Text('Can be bought for 150000 RE-Points from the R-Point Exchange, 6000 Bloodnium in the Bloodnium Exchange, or with 12 Death Metals (for x1) / 48 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from annual Event Quests or Gold / Platinum Lost Bags.'),
Text(''),
Text('Available Floors'),
Text('45F	DOAME	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('45F	GIOU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('46F	TAHEI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('47F	SAMINO	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	KIBARASE	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	JUSENJU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	FUWA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	NERI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('50F	NAKA-WARA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Leads to 51F TENGOKUMON.'),
Text('55F+	TENGOKU	EVERYDAY'),
Text('Every 5th floor (55, 60, 65 etc.).'),
Text('Not in Legendary Chests after 100F.'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/34/Candle_Wolf_Purple_Metal.jpg/revision/latest?cb=20181111031508',
  ),
  RnDMaterial(
    name: 'Candle Wolf Orange Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/1d/CW_Orange.png/revision/latest',
    rarity: 6,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Orange Metals only appear in Tengoku. They can appear right away as a "rare" Legendary Chest reward, but become a "common" reward above 100F. They can appear as Gold Chest rewards at any point, and can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate.'),
Text(''),
Text('Can be bought for 7000 Bloodnium in the Bloodnium Exchange, or with 14 Death Metals (for x1) / 56 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from annual Event Quests or Platinum Lost Bags.'),
Text(''),
Text('Available Floors'),
Text('55F+	TENGOKU	ALL'),
Text('Every 5th floor (55, 60, 65 etc.).'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/8e/Candle_Wolf_Orange_Metal.jpg/revision/latest?cb=20181111031526',
  ),
  RnDMaterial(
    name: 'Candle Wolf Platinum Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d4/CW_Platinum.png/revision/latest',
    rarity: 7,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('latinum Metals only appear in Tengoku, starting at 80F. They can appear as rare Legendary Chest rewards, and can also appear as Gold Chest rewards. At 80F or above, they can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them above 80F, but at a much, much lower rate.'),
Text(''),
Text('an be bought for 8000 Bloodnium in the Bloodnium Exchange.'),
Text(''),
Text('vailable Floors'),
Text('0F+	TENGOKU	ALL	Every 5th floor (80, 85, 90 etc.).'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/6c/Candle_Wolf_Platinum_Metal.jpg/revision/latest?cb=20181129151110',
  ),
RnDMaterial(
    name: 'Candle Wolf 44CE Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/bb/CW_44CE.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [],
      ),
    ),
  ),
];

List<RnDMaterial> milk = [
  RnDMaterial(
    name: 'M.I.L.K. Blue Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b9/MILK_Blue.png/revision/latest',
    rarity: 1,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('M.I.L.K. Blue Metals do not drop from a mid-boss, so they only naturally drop from Trap Rooms and Haters.'),
Text(''),
Text('Drops in Max\'s Area (1-10F) and Jackson\'s Area (11-20F) from Gold Chests; found in Trap Rooms or from Haters. Above 41F, the Hardcore Haters may rarely drop this from Gold Chests at a low rate. White Steel and Pale Wind have a chance to drop this metal on Hard difficulty.'),
Text(''),
Text('Can be bought for 20000 KC from Gyaku-Funsha, 50000 RE-Points from the R-Point Exchange, or with 4 Death Metals (for x1) / 16 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from Quests, Bronze Lost Bags, or Platinum / Bronze Box Uncle Prime.'),
Text(''),
Text('Available Floors'),
Text('3F	TAMATA	TUE / WED / SAT / SUN'),
Text('Floor is connect to the main elevator'),
Text('TRAP: Blue Metals, 3 Screamers.'),
Text('Floor is up every day, but Trap Room is not.'),
Text('3F	KAMI-IKEDOI	EVERYDAY'),
Text('TRAP: Blue Metals, 3 Screamers.'),
Text('Trap Room does not always spawn.'),
Text('3F	OMOKI	WED / FRI / SUN'),
Text('SHOP: 20000'),
Text('5F	DENDEN-CHOFU	TUE / THU / SAT'),
Text('SHOP: 20000'),
Text('6F	MOKA-MAGOME	TUE / WED / FRI / SAT / SUN'),
Text('Floor is connect to the main elevator'),
Text('TRAP: Blue Metals, 5 Screamers.'),
Text('Floor is up every day, but Trap Room is not.'),
Text('7F	MEGASHI-KOYA	MON'),
Text('SHOP: 20000'),
Text('9F	YONEGUCHI	EVERYDAY'),
Text('SHOP: 20000'),
Text('11F	NOKEJIRI	MON / WED / THU / FRI / SUN'),
Text('TRAP: Green or Blue Metals.'),
Text('2 Bone Tubers, 1 Screamer.'),
Text('Floor is up every day, but Trap Room is not.'),
Text('18F	TEMO-UMA	EVERYDAY'),
Text('TRAP: Green or Blue Metals.'),
Text('Mk-3 Bullet, Bone Tuber, Screamer.'),
Text('19F	CHITOSE-MEI	MON / TUE / WED / FRI / SAT / SUN'),
Text('TRAP: Green or Blue Metals.'),
Text('5 Screamers.'),
Text('Floor is up every day, but Trap Room is not.'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/ca/M.I.L.K._Blue_Metal.jpg/revision/latest?cb=20181111031546',
  ),
  RnDMaterial(
    name: 'M.I.L.K. Green Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/1c/MILK_Green.png/revision/latest',
    rarity: 2,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('M.I.L.K. Green Metals do not drop from a mid-boss, so they only naturally drop from Trap Rooms and Haters.'),
Text(''),
Text('Drops in Jackson\'s Area (11-20F) and Crowley\'s Area (21-30F) from Gold Chests; found in Trap Rooms or from Haters. Above 41F, the Hardcore Haters may rarely drop this from Gold Chests at a low rate. White Steel and Pale Wind have a chance to drop this metal on Hard difficulty.'),
Text(''),
Text('Can be bought for 30000 KC from Gyaku-Funsha, 75000 RE-Points from the R-Point Exchange, or with 6 Death Metals (for x1) / 24 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from Quests, Bronze / Silver / Gold Lost Bags, or Bronze / Silver Box Uncle Prime.'),
Text(''),
Text('Available Floors'),
Text('3F	OMOKI	WED / FRI / SUN'),
Text('SHOP: 30000'),
Text('11F	NOKEJIRI	MON / WED / THU / FRI / SUN'),
Text('TRAP: Green or Blue Metals.'),
Text('2 Bone Tubers, 1 Screamer.'),
Text('Floor is up every day, but Trap Room is not.'),
Text('14F	KOSHI-TAGAWA	MON / TUE / WED / THU / SAT / SUN'),
Text('SHOP: 30000'),
Text('17F	NUTAKOEN	MON / TUE / THU / FRI / SAT'),
Text('SHOP: 30000'),
Text('18F	TEMO-UMA	EVERYDAY'),
Text('TRAP: Green or Blue Metals.'),
Text('Mk-3 Bullet, Bone Tuber, Screamer.'),
Text('19F	CHITOSE-MEI	MON / TUE / WED / FRI / SAT / SUN'),
Text('TRAP: Green or Blue Metals.'),
Text('5 Screamers.'),
Text('Floor is up every day, but Trap Room is not.'),
Text('22F	KAWABE	EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Two Mk-3 Bone, one Screamer.'),
Text('28F	HYAKUDA	EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Five Screamers, one at a time.'),
Text('28F	HYAKKOKU	EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Four Mk-4 Scratch, one Mk-4 Hover, a Screamer.'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/af/M.I.L.K._Green_Metal.jpg/revision/latest?cb=20181111031613',
  ),
  RnDMaterial(
    name: 'M.I.L.K. Black Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/7d/MILK_Black.png/revision/latest',
    rarity: 3,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('M.I.L.K. Black Metals do not drop from a mid-boss, so they only naturally drop from Trap Rooms and Haters.'),
Text(''),
Text('Drops in Crowley\'s Area (21-30F) and Gunkanyama\'s Area (31-40F) from Gold Chests; found in Trap Rooms or from Haters. In the Battle To The Top area (41F+), this metal may be found in Gold Chests from the Treasure Rooms on dead-end floors. Hardcore Haters above 41F and in Tengoku may drop this from Gold Chests at a low rate. White Steel and Pale Wind have a chance to drop this metal on Hard difficulty.'),
Text(''),
Text('Can be bought for 40000 KC from Gyaku-Funsha, 100000 RE-Points from the R-Point Exchange, or with DM 8 (for x1) / 32 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from Quests, Silver / Gold Lost Bags, or Silver / Gold Box Uncle Prime.'),
Text(''),
Text('Available Floors'),
Text('22F	KAWABE	EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Two Mk-3 Bone, one Screamer.'),
Text('24F	MORIBA	EVERYDAY'),
Text('SHOP: 40000'),
Text('27F	DAIMON-MACHI	TUE / SAT'),
Text('SHOP: 40000'),
Text('27F	YUKIYOSHI	WED / FRI / SUN'),
Text('SHOP: 40000'),
Text('28F	HYAKUDA	EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Five Screamers, one at a time.'),
Text('28F	HYAKKOKU	EVERYDAY'),
Text('TRAP: Black or Green Metals.'),
Text('Four Mk-4 Scratch, one Mk-4 Hover, a Screamer.'),
Text('29F	TEMAE-JIMA	MON'),
Text('SHOP: 40000'),
Text('32F	KOSHI-YAMA	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('Mk-4 Bone Tuber, two Screamers.'),
Text('35F	WAKABA	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('4 Mk-5 Scratch, Mk-5 Hover, a Screamer.'),
Text('39F	HARATSUKA	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('Five Screamers one after another.'),
Text('45F	DOAME	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('45F	GIOU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('46F	TAHEI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('47F	SAMINO	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	KIBARASE	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	JUSENJU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	FUWA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	NERI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('50F	NAKA-WARA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Leads to 51F TENGOKUMON.'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b0/M.I.L.K._Black_Metal.jpg/revision/latest?cb=20181111031636',
  ),
  RnDMaterial(
    name: 'M.I.L.K. Red Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/91/MILK_Red.png/revision/latest',
    rarity: 4,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('M.I.L.K. Red Metals drop from the M.I.L.K. Mid-Boss, U-10, on 32F KATSUMA, and from their Don, Taro Gunkanyama, on 40F FUTAGI. They may drop damaged M.I.L.K. equipment or Kill Coins instead.'),
Text(''),
Text('Drops in Gunkanyama\'s Area (31-40F) from Gold Chests; found in Trap Rooms or from Haters. In the Battle To The Top area (41F+), this metal may be found in Gold Chests from the Treasure Rooms on dead-end floors. Hardcore Haters above 41F and in Tengoku may drop this from Gold Chests at a low rate. White Steel and Pale Wind have a chance to drop this metal on Hard difficulty.'),
Text(''),
Text('Red Metals may be a reward in Tengoku up to (and including) 100F. They may be in Gold Chests (but not the Legendary Chest) on Boss Floors, or drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate.'),
Text(''),
Text('Can be bought for 50000 KC from Gyaku-Funsha, 125000 RE-Points from the R-Point Exchange, or with 10 Death Metals (for x1) / 40 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from Quests, Gold / Platinum Lost Bags, or Gold Box Uncle Prime.'),
Text(''),
Text('Available Floors'),
Text('27F	YUKIYOSHI	WED / FRI / SUN'),
Text('SHOP: 50000'),
Text('32F	KATUSMA	EVERYDAY'),
Text('BOSS: U-10'),
Text('32F	KOSHI-YAMA	EVERYDAY'),
Text('Floor is connect to the main elevator'),
Text('TRAP: Red or Black Metals.'),
Text('Mk-4 Bone Tuber, two Screamers.'),
Text('33F	UCHINOBU	EVERYDAY'),
Text('SHOP: 50000'),
Text('35F	WAKABA	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('4 Mk-5 Scratch, Mk-5 Hover, a Screamer.'),
Text('38F	YATAKA-CHO	EVERYDAY'),
Text('TRAP: Red or Black Metals.'),
Text('Five Screamers one after another.'),
Text('39F	HARATSUKA	EVERYDAY'),
Text('SHOP: 50000'),
Text('40F	FUTAGI	EVERYDAY'),
Text('BOSS: GUNKANYAMA'),
Text('45F	DOAME	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('45F	GIOU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('46F	TAHEI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('47F	SAMINO	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	KIBARASE	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	JUSENJU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	FUWA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	NERI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('50F	NAKA-WARA	EVERYDAY	Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Leads to 51F TENGOKUMON.'),
Text('55F - 100F	TENGOKU	EVERYDAY'),
Text('Every 5th floor (55, 60, 65 etc.) up to 100F.'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/00/M.I.L.K._Red_Metal.jpg/revision/latest?cb=20181111031722',
  ),
  RnDMaterial(
    name: 'M.I.L.K. Purple Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b7/MILK_Purple.png/revision/latest',
    rarity: 5,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('M.I.L.K. Purple Metals start to drop in the Battle To The Top area (41F+), from Gold Chests in the Treasure Rooms on dead-end floors, or from Hardcore Haters. Typically, this means you have a chance at 1 Purple metal per run.'),
Text(''),
Text('In Tengoku, Purple Metals appear as Legendary Chest rewards, though will stop appearing in them after 100F. They can still appear as Gold Chest rewards at any point. They can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate. Due to the nature of Tengoku rewards, many more Purple metals can be obtained at once compared to runs in the 40\'s.'),
Text(''),
Text('Can be bought for RE-Points 150000 RE-Points from the R-Point Exchange, 6000 Bloodnium in the Bloodnium Exchange, or with 12 Death Metals (for x1) / 48 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from annual Event Quests or Gold / Platinum Lost Bags.'),
Text(''),
Text('Available Floors'),
Text('45F	DOAME	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('45F	GIOU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('46F	TAHEI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('47F	SAMINO	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	KIBARASE	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('48F	JUSENJU	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	FUWA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('49F	NERI	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Will return you to the Waiting Room.'),
Text('50F	NAKA-WARA	EVERYDAY'),
Text('Treasure Room.'),
Text('Chest has a Purple, Red or Black Metal.'),
Text('Leads to 51F TENGOKUMON.'),
Text('55F+	TENGOKU	EVERYDAY'),
Text('Every 5th floor (55, 60, 65 etc.).'),
Text('Not in Legendary Chests after 100F.'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d1/M.I.L.K._Purple_Metal.jpg/revision/latest?cb=20181111031804',
  ),
  RnDMaterial(
    name: 'M.I.L.K. Orange Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/46/MILK_Orange.png/revision/latest',
    rarity: 6,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Orange Metals only appear in Tengoku. They can appear right away as a "rare" Legendary Chest reward, but become a "common" reward above 100F. They can appear as Gold Chest rewards at any point, and can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them at any floor, but at a much, much lower rate.'),
Text(''),
Text('Can be bought for 7000 Bloodnium in the Bloodnium Exchange, or with 14 Death Metals (for x1) / 56 (for x5) Death Metals if appearing in the daily Hernia lineup.'),
Text(''),
Text('Can be received as a reward from annual Event Quests or Platinum Lost Bags.'),
Text(''),
Text('Available Floors'),
Text('55F+	TENGOKU	EVERYDAY'),
Text('Every 5th floor (55, 60, 65 etc.).'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/cf/M.I.L.K._Orange_Metal.jpg/revision/latest?cb=20181111031822',
  ),
  RnDMaterial(
    name: 'M.I.L.K. Platinum Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/89/MILK_Platinum.png/revision/latest',
    rarity: 7,
    where: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Platinum Metals only appear in Tengoku, starting at 80F. They can appear as rare Legendary Chest rewards, and can also appear as Gold Chest rewards. At 80F or above, they can drop directly from either Treasure Tubers or the corresponding faction Mid-Boss. Gold Chests from Hardcore Haters can drop them above 80F, but at a much, much lower rate.'),
Text(''),
Text('Can be bought for 8000 Bloodnium in the Bloodnium Exchange.'),
Text(''),
Text('Available Floors'),
Text('80F+	TENGOKU	EVERYDAY'),
Text('Every 5th floor (80, 85, 90 etc.).'),
        ],
      ),
    ), urlFullImage: 'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/36/M.I.L.K._Platinum_Metal.jpg/revision/latest?cb=20181129151133',
  ),
//   RnDMaterial(
//     name: 'M.I.L.K. 44CE Metal',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/7e/MILK_44CE.png/revision/latest',
//     rarity: 5,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
// ];

// List<RnDMaterial> jackal = [
//   RnDMaterial(
//     name: 'Jackal X ID Card',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/e/e0/IDX.png/revision/latest',
//     rarity: 6,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
//   RnDMaterial(
//     name: 'Jackal Y ID Card',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/70/IDY.png/revision/latest',
//     rarity: 6,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
//   RnDMaterial(
//     name: 'Jackal Z ID Card',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/8e/IDZ.png/revision/latest',
//     rarity: 6,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
//   RnDMaterial(
//     name: 'Sunflower Rare Metal',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a7/SunflowerM.png/revision/latest',
//     rarity: 5,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
//   RnDMaterial(
//     name: 'Sunflower Rare Metal X',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/ca/SunflowerX.png/revision/latest',
//     rarity: 7,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
//   RnDMaterial(
//     name: 'Sunflower Rare Metal Y',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/20/SunflowerY.png/revision/latest',
//     rarity: 7,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
//   RnDMaterial(
//     name: 'Sunflower Rare Metal Z',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/70/SunflowerZ.png/revision/latest',
//     rarity: 7,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
//   RnDMaterial(
//     name: 'Sunflower Rare Metal D',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/37/SunflowerD.png/revision/latest',
//     rarity: 7,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
//   RnDMaterial(
//     name: 'Jackal X DNA Data',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/fa/DNAX.png/revision/latest',
//     rarity: 8,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
//   RnDMaterial(
//     name: 'Jackal Y DNA Data',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/c2/DNAY.png/revision/latest',
//     rarity: 8,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
//   RnDMaterial(
//     name: 'Jackal Z DNA Data',
//     url:
//         'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/6f/DNAZ.png/revision/latest',
//     rarity: 8,
//     where: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [],
//       ),
//     ),
//   ),
// ];
