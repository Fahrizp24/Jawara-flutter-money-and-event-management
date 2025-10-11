import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Chart extends StatelessWidget {
  final String title;
  final Color bgColor;
  final List<PieChartSectionData> chartData;

  const Chart({
    Key? key,
    required this.title,
    required this.bgColor,
    required this.chartData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: bgColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: defaultPadding),
          AspectRatio(
            aspectRatio: 1.3,
            child: PieChart(
              PieChartData(
                borderData: FlBorderData(show: false),
                sectionsSpace: 0,
                centerSpaceRadius: 0,
                sections: chartData,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Contoh data pemasukan
final List<PieChartSectionData> pemasukanData = [
  PieChartSectionData(
    color: Colors.redAccent,
    value: 100,
    title: '100%',
    radius: 80,
    titleStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
];

// Contoh data pengeluaran
final List<PieChartSectionData> pengeluaranData = [
  PieChartSectionData(
    color: Colors.redAccent,
    value: 100,
    title: '100%',
    radius: 80,
    titleStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
];

final List<PieChartSectionData> statusPenduduk = [
  PieChartSectionData(
    color: const Color.fromARGB(255, 157, 184, 35),
    value: 100,
    title: '100%',
    radius: 80,
    titleStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
];

final List<PieChartSectionData> jenisKelamin = [
  PieChartSectionData(
    color: const Color.fromARGB(255, 201, 7, 104),
    value: 100,
    title: 'Laki laki 100%',
    radius: 80,
    titleStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
];

final List<PieChartSectionData> pekerjaanPenduduk = [
  PieChartSectionData(
    color: const Color.fromARGB(255, 201, 7, 104),
    value: 100,
    title: 'Lainnya 100%',
    radius: 80,
    titleStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
];

final List<PieChartSectionData> peranKeluarga = [
  PieChartSectionData(
    color: const Color.fromARGB(255, 201, 7, 104),
    value: 67,
    title: 'Kepala Keluarga 67%',
    radius: 80,
    titleStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
];

final List<PieChartSectionData> agama = [
  PieChartSectionData(
    color: const Color.fromARGB(255, 201, 7, 104),
    value: 100,
    title: 'Islam 100%',
    radius: 80,
    titleStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
];

final List<PieChartSectionData> pendidikan = [
  PieChartSectionData(
    color: const Color.fromARGB(255, 201, 7, 104),
    value: 100,
    title: 'Sarjana/Diploma',
    radius: 80,
    titleStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
];
