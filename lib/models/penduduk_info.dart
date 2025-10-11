import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class PendudukiInfo {
  final String? svgSrc, title;
  int jumlahPenduduk;
  final Color? color;

  PendudukiInfo({
    this.svgSrc,
    this.title,
    this.jumlahPenduduk=0,
    this.color,
  });
}

List demoPendudukInfo = [
  PendudukiInfo(
    title: "Total Penduduk",
    svgSrc: "assets/icons/Documents.svg",
    jumlahPenduduk: 2,
    color: primaryColor,
  ),
  
  
];
