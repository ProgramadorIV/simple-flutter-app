import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons',
    subTitle: 'Various buttons',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Cards',
    subTitle: 'Various cards',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Widgets to show progress',
    link: '/progress',
    icon: Icons.refresh_outlined,
  ),
  MenuItem(
    title: 'Snackbars and dialogs',
    subTitle: 'Info widgets',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Some cool stuff',
    link: '/animations',
    icon: Icons.animation_outlined,
  ),
  MenuItem(
    title: 'UI Controls & Tiles',
    subTitle: 'Some controls for your account',
    link: '/ui-controls',
    icon: Icons.settings,
  ),
  MenuItem(
    title: 'App introduction',
    subTitle: 'Short app tutorial',
    link: '/tutorial',
    icon: Icons.light,
  ),
  MenuItem(
    title: 'Infinite scroll',
    subTitle: 'List with infinite items',
    link: '/infinite-scroll',
    icon: Icons.list_alt_outlined,
  ),
  MenuItem(
    title: 'Counter',
    subTitle: 'Counter with Riverpod',
    link: '/counter',
    icon: Icons.add,
  ),
  MenuItem(
    title: 'Theme Changer',
    subTitle: 'Screen to change theme between the given options',
    link: '/theme',
    icon: Icons.color_lens_outlined,
  ),
];
