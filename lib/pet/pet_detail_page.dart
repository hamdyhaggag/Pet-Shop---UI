import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_shop/pet/pet_detail_about.dart';
import 'package:pet_shop/pet/pet_detail_appbar.dart';
import 'package:pet_shop/pet/pet_detail_info.dart';
import 'package:pet_shop/size_config.dart';
import '../app_styles.dart';

class PetDetailPage extends StatelessWidget {
  const PetDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kWhite,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          debugPrint('Add to cart button pressed!');
        },
        label: Text(
          'Add to cart',
          style: kSourceSansProSemibold.copyWith(
            color: kBoxShadowColor,
            fontSize: SizeConfig.blockSizeHorizontal! * 4,
          ),
        ),
        backgroundColor: kGrey,
        extendedPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: kPaddingHorizontal,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PetDetailAppBar(),
            PetDetailInfo(),
            PetDetailAbout(),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
