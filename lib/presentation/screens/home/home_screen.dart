import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_flutter_app/config/menu/menu_item.dart';
import 'package:simple_flutter_app/presentation/widgets/drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = "home_screen";

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('Simple App'),
        ),
        body: const _HomeView(),
        drawer: DrawerMenu(scaffoldKey: scaffoldKey));
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final item = appMenuItems[index];
        return _CustomListTile(item: item);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.item,
  });

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(item.title),
      trailing: Icon(
        Icons.arrow_forward_outlined,
        color: colors.primary,
      ),
      subtitle: Text(item.subTitle),
      leading: Icon(
        item.icon,
        color: colors.primary,
      ),
      onTap: () {
        // Navigator.pushNamed(context, item.link);
        context.push(item.link);
      },
    );
  }
}
