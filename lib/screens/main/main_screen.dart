import 'package:admin/controllers/menu_app_controller.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/keuangan_screen.dart';
import 'package:admin/screens/dashboard/kegiatan_screen.dart';
import 'package:admin/screens/dashboard/Kependudukan_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                flex: 1,
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 4,
              child: Navigator(
                initialRoute: '/dashboard',
                onGenerateRoute: (settings) {
                  switch (settings.name) {
                    case '/keuangan':
                      return MaterialPageRoute(builder: (context) => KeuanganScreen());
                    case '/kegiatan':
                      return MaterialPageRoute(builder: (context) => KegiatanScreen());
                    case '/kependudukan':                     
                      return MaterialPageRoute(builder: (context) => KependudukanScreen());
                    default:
                      return MaterialPageRoute(builder: (context) => KependudukanScreen());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
