import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'chart.dart';

class PendudukDetails extends StatelessWidget {
  const PendudukDetails({
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
            "Detail Penduduk",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Chart(
                  title: "🔘 Status Penduduk",
                  bgColor: Colors.green,
                  chartData: statusPenduduk,
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                child: Chart(
                  title: "⚤ Jenis Kelamin",
                  bgColor: Colors.blue,
                  chartData: jenisKelamin,
                ),
              ),
            ],
          ),
          SizedBox(height: defaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Chart(
                  title: "👪 Peran dalam Keluarga",
                  bgColor: Colors.blue,
                  chartData: peranKeluarga,
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                child: Chart(
                  title: "🙏 Agama",
                  bgColor: Colors.blue,
                  chartData: agama,
                ),
              ),
            ],
          ),
          SizedBox(height: defaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Chart(
                  title: "👨🏻‍🎓 Pendidikan",
                  bgColor: Colors.blue,
                  chartData: pendidikan,
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                child: Chart(
                  title: "💼 Pekerjaan Penduduk",
                  bgColor: Colors.blue,
                  chartData: pekerjaanPenduduk,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
