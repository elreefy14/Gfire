import 'package:flutter/material.dart';

class AccessoryCategory {
  final String name;
  final String url;
  final IconData icon;

  AccessoryCategory(
      {required this.name, required this.url, required this.icon});
}

class DeviceCategory {
  final String name;
  final String url;
  final IconData icon;
  DeviceCategory({required this.name, required this.url, required this.icon});
}

class UrlLists {


    final List<String> urls = [
    'https://jifirephone.com/',
    '',
   // 'https://jifirephone.com/collections/%D9%83%D8%A7%D9%85%D9%8A%D8%B1%D8%A7%D8%AA-%D9%85%D8%B1%D8%A7%D9%82%D8%A8%D8%A9',
    'https://jifirephone.com/collections/%D8%A7%D8%AC%D9%87%D8%B2%D8%A9-%D8%AD%D8%A7%D8%B3%D9%88%D8%A8',
   // 'https://jifirephone.com/collections/%D8%A7%D8%AC%D9%87%D8%B2%D8%A9-%D8%A7%D9%84%D8%B9%D8%A7%D8%A8-%D9%88%D8%AA%D8%B1%D9%81%D9%8A%D9%87',
    '',
  ];

    final List<DeviceCategory> deviceCategories = [
    DeviceCategory(
      name: 'ايـفـون',
      url: 'https://jifirephone.com/collections/%D8%A7%D9%8A%D9%81%D9%88%D9%86',
      icon: Icons.apple,
    ),
    DeviceCategory(
      name: 'سـامسونـج',
      url:
          'https://jifirephone.com/collections/%D8%A7%D8%AC%D9%87%D8%B2%D8%A9-%D9%87%D9%88%D8%A7%D8%AA%D9%81-%D9%85%D8%AD%D9%85%D9%88%D9%84%D8%A9',
      icon: Icons.phone_android,
    ),
    DeviceCategory(
      name: 'ريلمي وشاومـي',
      url:
          'https://jifirephone.com/collections/%D8%B1%D9%8A%D9%84%D9%85%D9%8A-%D8%B4%D8%A7%D9%88%D9%85%D9%8A',
      icon: Icons.smartphone,
    ),
    DeviceCategory(
      name: 'هـونـر',
      url: 'https://jifirephone.com/collections/%D9%87%D9%88%D9%86%D8%B1',
      icon: Icons.phone_android,
    ),
    DeviceCategory(
      name: 'تابلـت',
      url: 'https://jifirephone.com/collections/%D8%AA%D8%A7%D8%A8%D8%A7%D8%AA',
      icon: Icons.tablet_android,
    ),
    DeviceCategory(
      name: 'تـكنـو وانـفنـكس',
      url:
          'https://jifirephone.com/collections/%D8%AA%D9%83%D9%86%D9%88-%D8%A7%D9%86%D9%81%D9%86%D9%83%D8%B3',
      icon: Icons.phone_android,
    ),
  ];

   final List<AccessoryCategory> accessoryCategories = [
    AccessoryCategory(
      name: 'ساعات',
      url: 'https://jifirephone.com/collections/%D8%B3%D8%A7%D8%B9%D8%A7%D8%AA',
      icon: Icons.watch,
    ),
      AccessoryCategory(
      name: 'كاميرات',
      url: 'https://jifirephone.com/collections/%D9%83%D8%A7%D9%85%D9%8A%D8%B1%D8%A7%D8%AA-%D9%85%D8%B1%D8%A7%D9%82%D8%A8%D8%A9',
      icon: Icons.camera_alt,
    ),
      AccessoryCategory(
      name: 'الألعاب',
      url:  'https://jifirephone.com/collections/%D8%A7%D8%AC%D9%87%D8%B2%D8%A9-%D8%A7%D9%84%D8%B9%D8%A7%D8%A8-%D9%88%D8%AA%D8%B1%D9%81%D9%8A%D9%87',
      icon: Icons.videogame_asset,
    ),
    AccessoryCategory(
      name: 'سماعات وايربود',
      url:'https://jifirephone.com/collections/%D8%A7%D9%84%D8%B3%D9%85%D8%A7%D8%B9%D8%A7%D8%AA-%D8%A8%D9%84%D9%88%D8%AA%D9%88%D8%AB-%D9%88%D8%A7%D9%84%D8%A7%D9%8A%D8%B1%D8%A8%D9%88%D8%AF',
      icon: Icons.headphones,
    ),
    AccessoryCategory(
      name: 'اكسسوارات منوعة',
      url:'https://jifirephone.com/collections/%D8%A7%D9%83%D8%B3%D8%B3%D9%88%D8%A7%D8%B1%D8%A7%D8%AA',
      icon: Icons.cable,
    ),
      AccessoryCategory(
      name: 'أجهزة منزلية ومكائن',
      url:'https://jifirephone.com/collections/اجهزة-منزلية-ومكائن',
      icon: Icons.home,
    ),
  ];
     final List<AccessoryCategory> moreCategories = [
      AccessoryCategory(
      name: 'Oraimo',
      url:'https://jifirephone.com/collections/اكسسوارات-شركة-oraimo',
      icon: Icons.devices,
    ),
      AccessoryCategory(
      name: 'Anker + Momax',
      url:'https://jifirephone.com/collections/h-اكسسوارات-anker-momax',
      icon: Icons.devices,
    ),
          AccessoryCategory(
      name: 'Ace-Fast',
      url:'https://jifirephone.com/collections/h-اكسسوارات-ومنتجات-ace-fast',
      icon: Icons.devices,
    ),
          AccessoryCategory(
      name: 'Havit',
      url:'https://jifirephone.com/collections/h-اكسسوارات-ومنتجات-havit',
      icon: Icons.devices,
    ),
  ];
}