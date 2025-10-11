import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';

class TransaksiDetails extends StatelessWidget {
  const TransaksiDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Detail Transaksi",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Chart(
                      title: "🧾 Pemasukan Berdasarkan Kategori",
                      bgColor: Colors.green,
                      chartData: pemasukanData,
                    ),
                  ],
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Chart(
                      title: "🧾 Pengeluaran Berdasarkan Kategori",
                      bgColor: Colors.blue,
                      chartData: pengeluaranData,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
