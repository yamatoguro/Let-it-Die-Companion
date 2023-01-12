class RnDMaterial {
  final String name;
  final String url;
  final int rarity;
  int quantity = 0;

  RnDMaterial({required this.name, required this.url, required this.rarity});
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
  'cw': cw,
  'milk': milk,
  'jackal': jackal,
};

List<RnDMaterial> aluminum = [
  RnDMaterial(
    name: 'Aluminum Scraps',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d5/Aluminum1.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'Aluminum Can',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/0d/Aluminum2.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'Aluminum Engine Part',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/02/Aluminum3.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'Pure Aluminum',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/8f/Aluminum4.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'Aluminum Alloy 7075',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/f1/Aluminum5.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'Aluminum Alloy 9048',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/7b/Aluminum6.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'Aluminum Alloy 9050',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b8/Aluminum7.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Aluminum Alloy 9051',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/db/Aluminum8.png/revision/latest',
    rarity: 8,
  ),
];

List<RnDMaterial> copper = [
  RnDMaterial(
    name: 'Clump of Copper Scraps',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/bb/Copper1.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'Piece of Broken',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a1/Copper2.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'Copper Wire Mountain',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b9/Copper3.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'Pure Copper',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/83/Copper4.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'Oxygen-free Copper',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/67/Copper5.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'Beryllium Copper',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/72/Copper6.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'Corinthian Bronze',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/32/Copper7.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Orichalcum',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/1d/Copper8.png/revision/latest',
    rarity: 8,
  ),
];

List<RnDMaterial> iron = [
  RnDMaterial(
    name: 'Iron Scraps',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/dc/Iron1.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'Wire Mountain',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/7b/Iron2.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'Mass of Iron Bolts',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/aa/Iron3.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'Steel',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/01/Iron4.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'Ultra-pure Iron',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/5a/Iron5.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'Special Steel',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a3/Iron6.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'Chrome-Moly',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/fd/Iron7.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Tamahagane',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/15/Iron8.png/revision/latest',
    rarity: 8,
  ),
];

List<RnDMaterial> oil = [
  RnDMaterial(
    name: 'Waste Oil',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/f9/Oil1.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'Vegetable Oil',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d1/Oil2.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'Crude Oil',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/2a/Oil3.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'Mineral Oil',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/18/Oil4.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'Chemo-synthesized Oil',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/ae/Oil5.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'Biofuel',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d4/Oil6.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'Tiger Grease',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/92/Oil7.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Fatback',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b0/Oil8.png/revision/latest',
    rarity: 8,
  ),
];

List<RnDMaterial> wood = [
  RnDMaterial(
    name: 'Veneer Plank',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/4c/Wood1.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'MDF',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/9f/Wood2.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'Rosewood',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/18/Wood3.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'Walnut',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/75/Wood4.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'Mahogany',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/30/Wood5.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'Snake Wood',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/51/Wood6.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'Black Coal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/bf/Wood7.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Lignum Vitae',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/0/0b/Wood8.png/revision/latest',
    rarity: 8,
  ),
];

List<RnDMaterial> fiber = [
  RnDMaterial(
    name: 'Cotton',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/4a/Fiber1.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'Hemp',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a4/Fiber2.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'Leather',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/ac/Fiber3.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'Wool',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/e/ed/Fiber4.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'Silk',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/5/5b/Fiber5.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'Carbon Fiber',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/cb/Fiber6.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'Aramid Fiber',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/17/Fiber7.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Polyarylate Fiber',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a3/Fiber8.png/revision/latest',
    rarity: 8,
  ),
];

List<RnDMaterial> tuber = [
  RnDMaterial(
    name: 'Scratch Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/73/Tuber1.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'Bullet Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d4/Tuber2.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'Hovering Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/e/ea/Tuber3.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'Bone Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/2b/Tuber4.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'Reversal Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/bd/Tuber5.png/revision/latest',
    rarity: 5,
  ),
];

List<RnDMaterial> dod = [
  RnDMaterial(
    name: 'D.O.D. ARMS Blue Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/af/DOD_Blue.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Green Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/29/DOD_Green.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Black Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a6/DOD_Black.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Red Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d0/DOD_Red.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Purple Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/e/e9/DOD_Purple.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Orange Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b9/DOD_Orange.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS Platinum Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/6c/DOD_Platinum.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'D.O.D. ARMS 44CE Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/87/DOD_44CE.png/revision/latest',
    rarity: 5,
  ),
];

List<RnDMaterial> we = [
  RnDMaterial(
    name: 'War Ensemble Blue Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/66/WE_Blue.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'War Ensemble Green Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/64/WE_Green.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'War Ensemble Black Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/fa/WE_Black.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'War Ensemble Red Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/70/WE_Red.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'War Ensemble Purple Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/94/WE_Purple.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'War Ensemble Orange Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/18/WE_Orange.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'War Ensemble Platinum Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d5/WE_Platinum.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'War Ensemble 44CE Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/8d/WE_44CE.png/revision/latest',
    rarity: 5,
  ),
];

List<RnDMaterial> cw = [
  RnDMaterial(
    name: 'Candle Wolf Blue Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/14/CW_Blue.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'Candle Wolf Green Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/40/CW_Green.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'Candle Wolf Black Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d9/CW_Black.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'Candle Wolf Red Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/ae/CW_Red.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'Candle Wolf Purple Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/60/CW_Purple.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'Candle Wolf Orange Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/1d/CW_Orange.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'Candle Wolf Platinum Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/d/d4/CW_Platinum.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Candle Wolf 44CE Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/bb/CW_44CE.png/revision/latest',
    rarity: 5,
  ),
];

List<RnDMaterial> milk = [
  RnDMaterial(
    name: 'M.I.L.K. Blue Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b9/MILK_Blue.png/revision/latest',
    rarity: 1,
  ),
  RnDMaterial(
    name: 'M.I.L.K. Green Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/1/1c/MILK_Green.png/revision/latest',
    rarity: 2,
  ),
  RnDMaterial(
    name: 'M.I.L.K. Black Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/7d/MILK_Black.png/revision/latest',
    rarity: 3,
  ),
  RnDMaterial(
    name: 'M.I.L.K. Red Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/9/91/MILK_Red.png/revision/latest',
    rarity: 4,
  ),
  RnDMaterial(
    name: 'M.I.L.K. Purple Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/b/b7/MILK_Purple.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'M.I.L.K. Orange Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/4/46/MILK_Orange.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'M.I.L.K. Platinum Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/89/MILK_Platinum.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'M.I.L.K. 44CE Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/7e/MILK_44CE.png/revision/latest',
    rarity: 5,
  ),
];

List<RnDMaterial> jackal = [
  RnDMaterial(
    name: 'Jackal X ID Card',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/e/e0/IDX.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'Jackal Y ID Card',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/70/IDY.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'Jackal Z ID Card',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/8/8e/IDZ.png/revision/latest',
    rarity: 6,
  ),
  RnDMaterial(
    name: 'Sunflower Rare Metal',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/a/a7/SunflowerM.png/revision/latest',
    rarity: 5,
  ),
  RnDMaterial(
    name: 'Sunflower Rare Metal X',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/ca/SunflowerX.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Sunflower Rare Metal Y',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/2/20/SunflowerY.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Sunflower Rare Metal Z',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/7/70/SunflowerZ.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Sunflower Rare Metal D',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/3/37/SunflowerD.png/revision/latest',
    rarity: 7,
  ),
  RnDMaterial(
    name: 'Jackal X DNA Data',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/f/fa/DNAX.png/revision/latest',
    rarity: 8,
  ),
  RnDMaterial(
    name: 'Jackal Y DNA Data',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/c/c2/DNAY.png/revision/latest',
    rarity: 8,
  ),
  RnDMaterial(
    name: 'Jackal Z DNA Data',
    url:
        'https://static.wikia.nocookie.net/letitdie_gamepedia/images/6/6f/DNAZ.png/revision/latest',
    rarity: 8,
  ),
];
