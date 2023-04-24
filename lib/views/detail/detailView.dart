import 'package:flutter/material.dart';
import 'package:shopi_app/util/common.dart';
import 'package:shopi_app/views/detail/widgets/detailAppbar.dart';
import 'package:shopi_app/views/detail/widgets/detailDescriptionProduct.dart';
import 'package:shopi_app/views/detail/widgets/detailImageProduct.dart';
import 'package:shopi_app/views/detail/widgets/detailSpecificationProduct.dart';
import 'package:shopi_app/views/home/widgets/homeAppbar.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const DetailAppbar(),
            const DetailImageProduct(),
            space(h: 20),
            const DetailDescriptionProduct(),
            space(h: 20),
            DetailSpecificationProduct()
          ],
        ),
      ),
    );
  }
}
