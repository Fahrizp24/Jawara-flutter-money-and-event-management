import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class KeluargaiInfo {
  final String? svgSrc, title;
  int jumlahKeluarga;
  final Color? color;

  KeluargaiInfo({
    this.svgSrc,
    this.title,
    this.jumlahKeluarga=0,
    this.color,
  });
}

List demoKeluargaInfo = [
  KeluargaiInfo(
    title: "Jumlah Keluarga",
    svgSrc: "assets/icons/Documents.svg",
    jumlahKeluarga: 3,
    color: primaryColor,
  ),

  KeluargaiInfo(
    title: "Jumlah Penduduk",
    svgSrc: "assets/icons/Documents.svg",
    jumlahKeluarga: 2,
    color: const Color.fromARGB(255, 237, 21, 21),
  ),
  
  
];
