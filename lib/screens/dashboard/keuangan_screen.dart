import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/transaksi_fields.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

import 'components/penduduk_fields.dart';
import 'components/pengeluaran_details.dart';

class KeuanganScreen extends StatelessWidget {
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
                      ListTransaksi(),
                      SizedBox(height: defaultPadding),
                      TransaksiDetails(),
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
