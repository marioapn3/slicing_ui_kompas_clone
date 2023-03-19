import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kompas_clone_mario/widgets/button.dart';
import 'package:kompas_clone_mario/widgets/form_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Gap(64),
          Container(
            height: 75,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/ic_kompas.png',fit: BoxFit.fill,),
                Image.asset('assets/ic_kompas_title_blue.png', width: 200,)
              ],
            ),
          ),
          const Gap(32),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "KG Media ID",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
              ),
              const Gap(16),
              const Text(
                "Daftar dengan KG Media ID untuk menggunakan layanan-layanan dari KG Media",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              const Gap(48),
              CustomFormFieldWidget(
                labelText: "Nama Lengkap",
                controller: TextEditingController(),
              ),
              const Gap(32),
              CustomFormFieldWidget(
                labelText: "Email",
                controller: TextEditingController(),
              ),
              const Gap(32),
              CustomFormFieldWidget(
                labelText: "Nomor HP",
                controller: TextEditingController(),
              ),
              const Gap(32),
              CustomFormFieldWidget(
                labelText: "Password",
                controller: TextEditingController(),
                isObsecure: true,
              ),
              const Gap(48),
              const PrimaryButton(text: "Daftar"),
              const Gap(32),
              const Text(
                'Dengan menekan tombol “Lanjutkan”, kamu menyetujui\n'
                    'bahwa data dan informasi KG Media ID milikmu akan\n'
                    'digunakan untuk memberikan layanan sesuai Kebijakan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
