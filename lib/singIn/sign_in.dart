import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:kompas_clone_mario/widgets/button.dart';
import 'package:kompas_clone_mario/widgets/form_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(
              horizontal: 20
          ),
          children: [
            const Gap(64),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Gap(20),
                    Text(
                      'Akses ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      'Fitur Lengkap',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          backgroundColor: Colors.orange
                      ),
                    )
                  ],
                ),
                const Gap(10),
                const Text(
                  "dengan akunmu",
                  style:TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),
                ),
                const Gap(64),
                CustomFormFieldWidget(
                  labelText: 'Email',
                  controller: TextEditingController(),
                ),
                const Gap(32),
                CustomFormFieldWidget(
                  labelText: 'Password',
                  controller: TextEditingController(),
                  isObsecure: true,
                ),
                const Gap(32),
                const PrimaryButton(text: 'Login'),
                const Gap(150),
                Column(
                  children: [
                    TextButton(
                        onPressed: (){
                          context.go('/signIn/signUp');
                        },
                        child: const Text(
                          "Tidak Punya KG Media ID?",
                          style: TextStyle(
                              fontSize: 16
                          ),
                        )
                    ),
                    const Gap(16),
                    const Text(
                      "atau",
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    const Gap(16),
                    TextButton(
                        onPressed: (){
                          context.push('/mainScreen');
                        },
                        child: const Text(
                          "Nanti saja",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),
                        )
                    )
                  ],
                )

              ],
            )
          ],
        )
    );
  }
}
