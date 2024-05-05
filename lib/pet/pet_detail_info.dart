import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_shop/size_config.dart';
import '../app_styles.dart';

class PetDetailInfo extends StatelessWidget {
  const PetDetailInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kPaddingHorizontal,
      ),
      transform: Matrix4.translationValues(0, -12, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Marly',
                style: kSourceSansProBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 6,
                  color: kGrey,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/pin_point_icon.svg',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Arizona, U.S.',
                    style: kSourceSansProRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      color: kLighterGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              debugPrint('Favorite Button Tapped');
            },
            child: SvgPicture.asset(
              'assets/favorite_icon.svg',
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
