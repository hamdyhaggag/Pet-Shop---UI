import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_shop/app_styles.dart';
import 'package:pet_shop/pet/pet_detail_page.dart';
import 'package:pet_shop/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    List<String> dogs = [
      'dog_marly.png',
      'dog_cocoa.png',
      'dog_walt.png',
    ];

    List<String> cats = [
      'cat_alyx.png',
      'cat_brook.png',
      'cat_marly.png',
    ];

    List<String> dogsName = [
      'Marly',
      'Cocoa',
      'Walt',
    ];

    List<String> catsName = [
      'Alyx',
      'Brook',
      'Marly',
    ];

    return SafeArea(
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/nav_icon.svg',
                  width: 18,
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: kRed,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/welcome_message.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: SizeConfig.blockSizeHorizontal! * 38,
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello',
                            style: kSourceSansProMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                              color: kBlack,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Hamdy',
                            style: kSourceSansProMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                              color: kBlack,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '👋',
                            style: kSourceSansProMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              color: kBlack,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ready for an amazing and lucky\nexperience 🐈 🐕',
                        style: kSourceSansProRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          color: kBlack,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Row(
              children: [
                Text(
                  'Dogs',
                  style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 6,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 169,
            child: ListView.builder(
              itemCount: dogs.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 169,
                  width: 150,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 30 : 15,
                    right: index == dogs.length - 1 ? 30 : 0,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadiusList),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 14,
                          offset: const Offset(0, 3),
                          color: kBoxShadowColor.withOpacity(
                            0.18,
                          ))
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 150,
                        child: GestureDetector(
                          onTap: () {
                            // Navigate to another screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PetDetailPage()),
                            );
                          },
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(kBorderRadiusList),
                            child: Image.asset(
                              'assets/images/${dogs[index]}',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical! * 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.5),
                              color: kLightOrange,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 7,
                            ),
                            child: Center(
                              child: Text(
                                'BANANA',
                                style: kSourceSansProBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.5,
                                  color: kOrange,
                                ),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: kRed,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            dogsName[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kGrey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text(
                            '17 jun 2021',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kSourceSansProRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 2,
                              color: kLightGrey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Row(
              children: [
                Text(
                  'Cats',
                  style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 6,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 169,
            child: ListView.builder(
              itemCount: cats.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 169,
                  width: 150,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 30 : 15,
                    right: index == cats.length - 1 ? 30 : 0,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadiusList),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 14,
                          offset: const Offset(0, 3),
                          color: kBoxShadowColor.withOpacity(
                            0.18,
                          ))
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 150,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(kBorderRadiusList),
                          child: Image.asset(
                            'assets/images/${cats[index]}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical! * 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.5),
                              color: kLightOrange,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 7,
                            ),
                            child: Center(
                              child: Text(
                                'BANANA',
                                style: kSourceSansProBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.5,
                                  color: kOrange,
                                ),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: kRed,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            catsName[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kGrey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text(
                            '17 jun 2021',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kSourceSansProRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 2,
                              color: kLightGrey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
