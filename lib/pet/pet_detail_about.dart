import 'package:flutter/material.dart';
import 'package:pet_shop/size_config.dart';

import '../app_styles.dart';

class PetDetailAbout extends StatelessWidget {
  const PetDetailAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
          child: Text(
            'About me',
            style: kSourceSansProRegular.copyWith(
              color: kLighterGrey,
              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
          child: Text(
            'Remember this sweet face? Several years ago Charlie came into our care when their person died. These two easy-going Lhasa Apso mixes quickly to settle into foster care. Living with kids, cats, and other dogs, they were the perfect guests, and once their vetting and evaluation was done this bonded pair found their home with a kind couple.\n\nRemember this sweet face? Several years ago Charlie came into our care when their person died. These two easy-going Lhasa Apso mixes quickly to settle into foster care. Living with kids, cats, and other dogs, they were the perfect guests, and once their vetting and evaluation was done this bonded pair found their home with a kind couple.\n\nRemember this sweet face? Several years ago Charlie came into our care when their person died. These two easy-going Lhasa Apso mixes quickly to settle into foster care. Living with kids, cats, and other dogs, they were the perfect guests, and once their vetting and evaluation was done this bonded pair found their home with a kind couple.',
            style: kSourceSansProSemibold.copyWith(
              color: kGrey,
              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
            ),
          ),
        ),
        const SizedBox(
          height: kPaddingHorizontal,
        ),
      ],
    );
  }
}
