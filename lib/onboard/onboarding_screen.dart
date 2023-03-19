import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:kompas_clone_mario/onboard/onboarding_slider.dart';
import 'package:kompas_clone_mario/widgets/button.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int? currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_bg_kompas_logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 82,
                child: CarouselSlider(
                    items: const [
                      FirstOnboarding(),
                      SecondOnboarding(),
                      ThirdOnboarding(),
                      FourthOnboarding(),
                    ],
                    carouselController: _controller,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      height: double.infinity,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) => {
                        setState(() {
                          currentIndex = index;
                        })
                      },
                    )),
              ),
              Expanded(
                flex: 18,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(),
                      const Spacer(),
                      PrimaryButton(
                        text: currentIndex == 0 ? 'Ayo Mulai' : 'Lanjutkan',
                        onPressed: () {
                          currentIndex == 3
                              ? context.go('/signIn')
                              : _controller.nextPage();
                        },
                      ),
                      const Gap(32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: currentIndex == 0 ? 13 : 9,
                            width: currentIndex == 0 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 0
                                  ? Colors.deepOrange
                                  : const Color(0xffF1F1F1),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: currentIndex == 1 ? 13 : 9,
                            width: currentIndex == 1 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 1
                                  ? Colors.deepOrange
                                  : const Color(0xffF1F1F1),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: currentIndex == 2 ? 13 : 9,
                            width: currentIndex == 2 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 2
                                  ? Colors.deepOrange
                                  : const Color(0xffF1F1F1),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: currentIndex == 3 ? 13 : 9,
                            width: currentIndex == 3 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 3
                                  ? Colors.deepOrange
                                  : const Color(0xffF1F1F1),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      const Gap(32),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
