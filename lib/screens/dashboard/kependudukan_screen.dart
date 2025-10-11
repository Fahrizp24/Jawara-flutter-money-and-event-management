import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/penduduk_details.dart';
import 'package:admin/screens/dashboard/components/penduduk_fields.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';


class KependudukanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      ListPenduduk(),
                      SizedBox(height: defaultPadding),
                      PendudukDetails(),
                      SizedBox(height: defaultPadding),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we don't want to show it
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
