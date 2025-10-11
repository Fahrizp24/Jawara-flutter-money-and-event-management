import 'package:admin/models/keluarga_info.dart';
import 'package:admin/models/penduduk_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class pendudukCard extends StatelessWidget {
  const pendudukCard({
    Key? key,
    // required this.pendudukiInfo,
    required this.keluargaiInfo,
  }) : super(key: key);

  // final PendudukiInfo pendudukiInfo;
  final KeluargaiInfo keluargaiInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .center, // Semua elemen di tengah secara horizontal
        mainAxisAlignment:
            MainAxisAlignment.center, // Semua elemen di tengah secara vertikal
        children: [
          // Column(
          //   mainAxisAlignment: MainAxisAlignment
          //       .center, // Title dan SVG di tengah secara horizontal
          //   children: [
          //     Container(
          //       padding: EdgeInsets.all(defaultPadding * 0.75),
          //       height: 40,
          //       width: 40,
          //       decoration: BoxDecoration(
          //         color: pendudukiInfo.color!.withOpacity(0.1),
          //         borderRadius: const BorderRadius.all(Radius.circular(10)),
          //       ),
          //       child: SvgPicture.asset(
          //         pendudukiInfo.svgSrc!,
          //         colorFilter: ColorFilter.mode(
          //             pendudukiInfo.color ?? Colors.black, BlendMode.srcIn),
          //       ),
          //     ),
          //     SizedBox(width: defaultPadding),
          //     Text(
          //       pendudukiInfo.title!,
          //       maxLines: 1,
          //       overflow: TextOverflow.ellipsis,
          //     ),
          //     SizedBox(height: defaultPadding),
          //     Text(
          //       pendudukiInfo.jumlahPenduduk.toString()!,
          //       maxLines: 1,
          //       overflow: TextOverflow.ellipsis,
          //       style: Theme.of(context)
          //           .textTheme
          //           .titleLarge!
          //           .copyWith(fontWeight: FontWeight.bold),
          //       textAlign: TextAlign.center, // Memastikan teks berada di tengah
          //     ),
          //   ],
          // ),

          // Tambahkan informasi keluarga di bawah informasi penduduk
          SizedBox(width: defaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: keluargaiInfo.color!.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  keluargaiInfo.svgSrc!,
                  colorFilter: ColorFilter.mode(
                      keluargaiInfo.color ?? Colors.black, BlendMode.srcIn),
                ),
              ),
              SizedBox(width: defaultPadding),
              Text(
                keluargaiInfo.title!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          SizedBox(height: defaultPadding),
          Text(
            keluargaiInfo.jumlahKeluarga.toString()!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center, // Memastikan teks berada di tengah
          ),
        ],
      ),
    );
  }
}
