import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(64),
        Container(
          width: 58,
          height: 58,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/ic_kompas.png',
              ),
            ),
          ),
        ),
        const Gap(16),
        const Text(
          'Selamat Datang',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(16),
        const Text(
          'Dapatkan berita terupdate, jernih, akurat\ndan terpercaya hanya di Kompas.com',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Layer first (image phone)
        Positioned(
          top: 50,
          bottom: 0,
          right: 0,
          left: 0,
          child: Image.asset(
            'assets/img_slider_one.png',
            height: double.infinity,
          ),
        ),
        // Layer first (image phone)

        Positioned(
          child: Container(
            height: double.infinity,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        Positioned(
          left: 0,
          top: MediaQuery.of(context).size.height * 0.4,
          bottom: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Atur',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Minat',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(16),
              const Text('Untuk mendapatkan berita\nyang kamu suka',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}

class ThirdOnboarding extends StatelessWidget {
  const ThirdOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          top: 50,
          child: Image.asset(
            'assets/img_slider_two.png',
            height: double.infinity,
          ),
        ),
        Positioned(
          child: Container(
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        Positioned(
          left: 0,
          top: MediaQuery.of(context).size.height * 0.4,
          bottom: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.bookmark_border,
                      color: Color(0xffF1F1F1),
                    ),
                    Gap(8),
                    Text('Simpan ke Baca Nanti',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300))
                  ],
                ),
              ),
              const Gap(16),
              const Text(
                'Simpan dan',
                style: TextStyle(color: Colors.white),
              ),
              const Gap(4),
              const Text("Baca Nanti",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ],
    );
  }
}

class FourthOnboarding extends StatelessWidget {
  const FourthOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          top: MediaQuery.of(context).size.height * 0.15,
          child: Column(
            children: [
              const SizedBox(),
              const Spacer(),
              const Text(
                'Update cepet dengan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: 'Notifikasi ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w600,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Berita',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/img_slider_three.png',
                height: 444,
              ),
            ],
          ),
        ),
        Positioned(
          child: Column(
            children: [
              const Expanded(flex: 100, child: SizedBox()),
              Expanded(
                flex: 0,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
