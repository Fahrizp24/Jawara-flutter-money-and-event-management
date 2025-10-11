import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
class TransaksiInfo {
  final String? svgSrc, title, BesarTransaksi;
  final Color? color;

  TransaksiInfo({
    this.svgSrc,
    this.title,
    this.BesarTransaksi,
    this.color,
  });
}

List demoListTransaksi = [
  TransaksiInfo(
    title: "Total Pemasukan",
    svgSrc: "assets/icons/Documents.svg",
    BesarTransaksi: "10 Ribu",
    color: primaryColor,
  ),
  TransaksiInfo(
    title: "Total Pengeluaran",
    svgSrc: "assets/icons/media.svg",
    BesarTransaksi: "2.1 Ribu",
    color: Color.fromARGB(255, 78, 152, 96),
  ),
  TransaksiInfo(
    title: "Jumlah Transaksi",
    svgSrc: "assets/icons/folder.svg",
    BesarTransaksi: "2",
    color: Color.fromARGB(255, 163, 163, 105)
  ),
  
];
