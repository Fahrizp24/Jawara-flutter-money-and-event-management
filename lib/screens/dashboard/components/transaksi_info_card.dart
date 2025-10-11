import 'package:admin/models/transaksi_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class TransaksiInfoCard extends StatelessWidget {
  const TransaksiInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final TransaksiInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Semua elemen di tengah secara horizontal
        mainAxisAlignment: MainAxisAlignment.center, // Semua elemen di tengah secara vertikal
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Title dan SVG di tengah secara horizontal
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color!.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  info.svgSrc!,
                  colorFilter: ColorFilter.mode(
                      info.color ?? Colors.black, BlendMode.srcIn),
                ),
              ),
              SizedBox(width: defaultPadding),
              Text(
                info.title!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          SizedBox(height: defaultPadding),
          Text(
            info.BesarTransaksi!,
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
