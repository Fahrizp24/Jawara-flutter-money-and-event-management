import 'package:admin/models/keluarga_info.dart';
// import 'package:admin/models/penduduk_info.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'penduduk_info_card.dart';

class ListPenduduk extends StatelessWidget {
  const ListPenduduk({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Penduduk",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: pendudukCardGridView(
            crossAxisCount: _size.width < 650 ? 1 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: pendudukCardGridView(),
          desktop: pendudukCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class pendudukCardGridView extends StatelessWidget {
  const pendudukCardGridView({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoKeluargaInfo.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => pendudukCard(keluargaiInfo: demoKeluargaInfo[index],),
    );
  }
}
