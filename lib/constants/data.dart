import 'package:flutter/material.dart';

import '../models/caro_data_item.dart';
import '../models/data_item.dart';

Color primaryColor = Color(0XFF00a6ff);

final List<Map<String, dynamic>> tabItems = [
  {
    'label': 'BUSCAR',
    'selected':
        'assets/images/select_search.png',
    'unselected':
        'assets/images/unselect_search.png',
    'noti_count': 0,
    'is_hot': false
  },
  {
    'label': 'INICIO',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/home_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/home_light.webp',
    'noti_count': 40,
    'is_hot': false
  },
  {
    'label': 'JACKPOT',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/jackpot_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/jackpot_light.webp',
    'noti_count': 0,
    'is_hot': true
  },
  {
    'label': 'NUEVO',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/new_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/new_light.webp',
    'noti_count': 40,
    'is_hot': false
  },
  {
    'label': 'CASUAL',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/casual_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/casual_light.webp',
    'noti_count': 40,
    'is_hot': false
  },
  {
    'label': 'CRASH',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/crash_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/crash_light.webp',
    'noti_count': 33,
    'is_hot': false
  },
  {
    'label': 'PRAGMATIC',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/pragmatic_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/pragmatic_light.webp',
    'noti_count': 492,
    'is_hot': false
  },
  {
    'label': 'FAT PANDA',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/fat_panda_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/fat_panda_light.webp',
    'noti_count': 9,
    'is_hot': false
  },
  {
    'label': 'PLAYTECH',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/playtech_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/playtech_light.webp',
    'noti_count': 41,
    'is_hot': false
  },
  {
    'label': 'SLOTS',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/slots_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/slots_light.webp',
    'noti_count': 6364,
    'is_hot': false
  },
  {
    'label': 'BINGO',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/bingo_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/bingo_light.webp',
    'noti_count': 142,
    'is_hot': false
  },
  {
    'label': 'EN VIVO',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/live_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/live_light.webp',
    'noti_count': 851,
    'is_hot': false
  },
  {
    'label': 'CARTAS',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/cards_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/cards_light.webp',
    'noti_count': 194,
    'is_hot': false
  },
  {
    'label': 'OTROS',
    'selected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/other_active.webp',
    'unselected':
        'https://sfgdefe0923.fun88adrods.online/mexicoimages/categories/other_light.webp',
    'noti_count': 330,
    'is_hot': false
  },
];

final List<DataItem> popularDataList = [
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PP/vs5joker.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PP/vs25goldparty.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PP/vs40cosmiccash.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PP/vs20cm.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/JILI/jili_fortunegems2.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PP/pp_vs20sugarrushx.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PP/vs15diamond.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/SW/sw_getede.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/JILI/jili_fortunegems3.webp',isHot: false),
  // Add more items...
];

final List<DataItem> playTechDataList = [
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PT/gpas_bwizard_pop.webp',isHot: true),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PT/gpas_bcircus_pop.webp',isHot: true),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PT/gpas_gwizard_pop.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PT/ptn_gpas_3wizards_pop.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PT/gpas_hcdelux_pop.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PT/ptn_gpas_rwizard_pop.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PT/gpas_kgomoon_pop.webp',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PT/aztecacashcollect.png',isHot: false),
  DataItem(
      isPopular: false, imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/games/PT/gpas_etpop_pop.webp',isHot: false),
  // Add more items...
];

final List<CaroDataItem> caroDataItem = [
  CaroDataItem(imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/providers/light/EXPANSE.webp',title: 'XProGaming', juegosCount: 10),
  CaroDataItem(imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/providers/light/ENDORPHINA.webp',title: 'Endorphina', juegosCount: 168),
  CaroDataItem(imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/providers/light/HAB.webp',title: 'Habanero', juegosCount: 207),
  CaroDataItem(imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/providers/light/NAGA.webp',title: 'NAGA', juegosCount: 47),
  CaroDataItem(imageUrl: 'https://f1m9.blob.core.windows.net/f1m9/providers/light/SW.webp',title: 'Skywind', juegosCount: 258),
  // Add more items...
];
