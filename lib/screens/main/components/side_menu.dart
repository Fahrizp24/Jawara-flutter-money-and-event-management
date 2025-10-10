import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool _dashboardExpanded = false;
  bool _dataWarga = false;
  bool _dataPemasukan = false;
  bool _dataPengeluaran = false;
  bool _LaporanKeuangan = false;
  bool _KegiatanBroadcast = false;
  bool _PesanWarga = false;
  bool _PenerimaanWarga = false;
  bool _MutasiKeluarga = false;
  bool _LogAktifitas = false;
  bool _ManajemenPengguna = false;
  bool _ChannelTransfer = false;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Bagian menu yang bisa di-scroll
          Expanded(
            child: ListView(
              children: [
                // Versi dengan alignment start (rata kiri semua)
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      // Icon di sebelah kiri
                      Icon(
                        Icons.school,
                        color: Colors.white,
                        size: 48,
                      ),

                      const SizedBox(width: 14), // Jarak antara icon dan text

                      // Tulisan di sebelah kanan icon
                      const Text(
                        "Jawara Pintar.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Menu",
                    style: TextStyle(color: Colors.white54, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 16),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _dashboardExpanded,
                  onExpansionChanged: (value) {
                    setState(() => _dashboardExpanded = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_dashboard.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Dashboard",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Keuangan"),
                    SubMenuTile(title: "Kegiatan"),
                    SubMenuTile(title: "Kependudukan"),
                  ],
                ),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _dataWarga,
                  onExpansionChanged: (value) {
                    setState(() => _dataWarga = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_profile.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Data Warga & Rumah",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Warga - Daftar"),
                    SubMenuTile(title: "Warga - Tambah"),
                    SubMenuTile(title: "Keluarga"),
                    SubMenuTile(title: "Rumah - Daftar"),
                    SubMenuTile(title: "Rumah - Tambah"),
                  ],
                ),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _dataPemasukan,
                  onExpansionChanged: (value) {
                    setState(() => _dataPemasukan = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_tran.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Pemasukan",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Kategori Iuran"),
                    SubMenuTile(title: "Tagih Iuran"),
                    SubMenuTile(title: "Tagihan"),
                    SubMenuTile(title: "Pemasukan Lain - Daftar"),
                    SubMenuTile(title: "Pemasukan Lain - Tambah"),
                  ],
                ),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _dataPengeluaran,
                  onExpansionChanged: (value) {
                    setState(() => _dataPengeluaran = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_task.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Pengeluaran",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Daftar"),
                    SubMenuTile(title: "Tambah"),
                  ],
                ),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _LaporanKeuangan,
                  onExpansionChanged: (value) {
                    setState(() => _LaporanKeuangan = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_doc.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Laporan Keuangan",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Semua Pemasukan"),
                    SubMenuTile(title: "Semua Pengeluaran"),
                    SubMenuTile(title: "Cetak Laporan"),
                  ],
                ),

                // ========== Kegiatan dan Broadcast ==========
                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _KegiatanBroadcast,
                  onExpansionChanged: (value) {
                    setState(() => _KegiatanBroadcast = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_store.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Kegiatan & Broadcast",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Kegiatan - Daftar"),
                    SubMenuTile(title: "Kegiatan - Tambah"),
                    SubMenuTile(title: "Broadcast - Daftar"),
                    SubMenuTile(title: "Broadcast - Tambah"),
                  ],
                ),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _PesanWarga,
                  onExpansionChanged: (value) {
                    setState(() => _PesanWarga = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_notification.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Pesan Warga",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Informasi Aspirasi"),
                  ],
                ),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _PenerimaanWarga,
                  onExpansionChanged: (value) {
                    setState(() => _PenerimaanWarga = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_task.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Penerimaan Warga",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Penerimaan Warga"),
                  ],
                ),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _MutasiKeluarga,
                  onExpansionChanged: (value) {
                    setState(() => _MutasiKeluarga = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_profile.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Mutasi Keluarga",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Daftar"),
                    SubMenuTile(title: "Tambah"),
                  ],
                ),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _LogAktifitas,
                  onExpansionChanged: (value) {
                    setState(() => _LogAktifitas = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_setting.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Log Aktifitas",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Semua Aktifitas"),
                  ],
                ),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _ManajemenPengguna,
                  onExpansionChanged: (value) {
                    setState(() => _ManajemenPengguna = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_profile.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Manajemen Pengguna",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Daftar Pengguna"),
                    SubMenuTile(title: "Tambah Pengguna"),
                  ],
                ),

                ExpansionTile(
                  collapsedIconColor: Colors.white54,
                  iconColor: Colors.white54,
                  initiallyExpanded: _ChannelTransfer,
                  onExpansionChanged: (value) {
                    setState(() => _ChannelTransfer = value);
                  },
                  leading: SvgPicture.asset(
                    "assets/icons/menu_doc.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                    height: 18,
                  ),
                  title: const Text(
                    "Channel Transfer",
                    style: TextStyle(color: Colors.white54),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 48),
                  children: const [
                    SubMenuTile(title: "Daftar Channel"),
                    SubMenuTile(title: "Tambah Channel"),
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),

          // ===== Admin Info Section =====
          // Bagian ini akan selalu berada di bawah
          Container(
            width: double.infinity,
            child: Column(
              children: [
                const Divider(color: Colors.white24, height: 1),
                
                // Kode ListTile yang bisa diklik
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.white24,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: const Text(
                    "Admin Jawara",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "admin1@gmail.com",
                    style: TextStyle(color: Colors.white54),
                  ),
                  trailing: Icon(
                    _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: Colors.white54,
                  ),
                  onTap: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                ),

                // Menu logout yang muncul ketika diklik
                if (_isExpanded) ...[
                  const Divider(color: Colors.white54, height: 1),
                  ListTile(
                    leading: const Icon(Icons.logout, color: Colors.white54),
                    title: const Text(
                      "Log out",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Tambahkan fungsi logout di sini
                      print("Logout tapped");
                      // Contoh: Navigator.pushReplacementNamed(context, '/login');
                      // atau: _authService.logout();
                    },
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}

class SubMenuTile extends StatelessWidget {
  const SubMenuTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 8),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54, fontSize: 14),
      ),
      onTap: () {},
    );
  }
}