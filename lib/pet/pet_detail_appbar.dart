import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_shop/size_config.dart';

import '../app_styles.dart';

class PetDetailAppBar extends StatelessWidget {
  const PetDetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical! * 50,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/dog_marly_cover.png',
            height: SizeConfig.blockSizeVertical! * 60,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(42),
                  topRight: Radius.circular(42),
                ),
                color: kWhite,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical! * 8,
                left: SizeConfig.blockSizeHorizontal! * 8,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  'assets/arrow_left_icon.svg',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
