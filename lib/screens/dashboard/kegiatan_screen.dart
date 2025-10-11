// import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../constants.dart';
// import 'components/header.dart';
// import 'components/chart.dart';

class KegiatanScreen extends StatelessWidget {
  const KegiatanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding),
              // ================== ROW 1 ==================
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- TOTAL KEGIATAN ---
                  Expanded(
                    child: _DashboardCard(
                      color: const Color(0xFF2C3553), // biru lembut gelap
                      title: "🎯 Total Kegiatan",
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "12",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 105),
                          const Text(
                            "Jumlah seluruh event yang sudah ada",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  // --- KEGIATAN PER KATEGORI ---
                  Expanded(
                    child: _DashboardCard(
                      color: const Color(0xFF294B4A), // hijau toska gelap
                      title: "📊 Kegiatan per Kategori",
                      content: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            child: PieChart(
                              PieChartData(
                                sectionsSpace: 2,
                                centerSpaceRadius: 35,
                                sections: [
                                  PieChartSectionData(
                                    color: Colors.blueAccent.shade200,
                                    value: 25,
                                    title: '',
                                  ),
                                  PieChartSectionData(
                                    color: Colors.tealAccent.shade400,
                                    value: 30,
                                    title: '',
                                  ),
                                  PieChartSectionData(
                                    color: Colors.deepPurpleAccent.shade100,
                                    value: 20,
                                    title: '',
                                  ),
                                  PieChartSectionData(
                                    color: Colors.orangeAccent.shade200,
                                    value: 25,
                                    title: '',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              _Legend(
                                  color: Colors.blueAccent, text: "Webinar"),
                              _Legend(
                                  color: Colors.tealAccent, text: "Workshop"),
                              _Legend(
                                  color: Colors.deepPurpleAccent,
                                  text: "Lomba"),
                              _Legend(
                                  color: Colors.orangeAccent,
                                  text: "Pelatihan"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
              // ================== ROW 2 ==================
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- KEGIATAN BERDASARKAN WAKTU ---
                  Expanded(
                    child: _DashboardCard(
                      color: const Color(0xFF534E2C), // kuning kecoklatan gelap
                      title: "🕒 Berdasarkan Waktu",
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Sudah Lewat: 2",
                              style: TextStyle(color: Colors.white70)),
                          Text("Hari Ini: 1",
                              style: TextStyle(color: Colors.white70)),
                          Text("Akan Datang: 9",
                              style: TextStyle(color: Colors.white70)),
                          SizedBox(height: 130),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  // --- PENANGGUNG JAWAB TERBANYAK ---
                  Expanded(
                    child: _DashboardCard(
                      color: const Color(0xFF3C2C53), // ungu gelap
                      title: "👤 Penanggung Jawab Terbanyak",
                      content: Column(
                        children: List.generate(
                          3,
                          (index) => ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/profile_pic.png"),
                            ),
                            title: Text(
                              "Peserta ${index + 1}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: const Text(
                              "10 kegiatan",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: defaultPadding),

              // ================== ROW 3 ==================
const SizedBox(height: defaultPadding),
_DashboardCard(
  color: const Color(0xFF2A2D3E), // lebih terang sedikit dari bg utama
  title: "📅 Kegiatan per Bulan (Tahun Ini)",
  content: SizedBox(
    height: 250,
    child: BarChart(
      BarChartData(
        backgroundColor: const Color(0xFF32364A), // warna panel grafik
        borderData: FlBorderData(show: false),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: 5,
          getDrawingHorizontalLine: (value) => FlLine(
            color: Colors.white12,
            strokeWidth: 1,
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                const bulan = [
                  "Jan", "Feb", "Mar", "Apr", "Mei", "Jun",
                  "Jul", "Agu", "Sep", "Okt", "Nov", "Des"
                ];
                return Text(
                  bulan[value.toInt() % 12],
                  style: const TextStyle(color: Colors.white70, fontSize: 10),
                );
              },
              interval: 1,
              reservedSize: 24,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 5,
              getTitlesWidget: (value, meta) => Text(
                "${value.toInt()}",
                style: const TextStyle(color: Colors.white38, fontSize: 10),
              ),
              reservedSize: 28,
            ),
          ),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        barGroups: List.generate(12, (index) {
          final heights = [4, 8, 6, 10, 7, 5, 11, 9, 3, 7, 5, 8];
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: heights[index].toDouble(),
                color: Colors.tealAccent.shade400.withOpacity(0.8),
                borderRadius: BorderRadius.circular(4),
                width: 14,
              ),
            ],
          );
        }),
      ),
    ),
  ),
),



            ],
          ),
        ),
      ),
    );
  }
}

/// ================== CARD TEMPLATE ==================
class _DashboardCard extends StatelessWidget {
  final Color color;
  final String title;
  final Widget content;

  const _DashboardCard({
    required this.color,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 12),
          content,
        ],
      ),
    );
  }
}

/// ================== LEGEND MINI ==================
class _Legend extends StatelessWidget {
  final Color color;
  final String text;
  const _Legend({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 10, height: 10, color: color),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(fontSize: 12, color: Colors.white70)),
      ],
    );
  }
}
