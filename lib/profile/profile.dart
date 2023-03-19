import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:kompas_clone_mario/widgets/custom_text_button.dart';
import 'package:kompas_clone_mario/widgets/item_edit_profile.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Akun Saya',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(32),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 70 / 2,
                        child: Text(
                          'I',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Gap(20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'John Doe',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'KG Media ID',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'johndoe@gmail.com',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: (){
                        context.push('/homeScreen/profileUser/changeProfile');
                      },
                      icon: const Icon(
                        Icons.mode_edit,
                          color: Colors.black,
                          size: 26
                      )
                  )

                ],
              ),
            ),
            const Gap(25),
            Container(
              width: double.infinity,
              height: 17,
              color: const Color(0xffF1F1F1),
            ),
            const ItemEditProfileWidget(
              subtitles: 'Pilih Gender',
              title: 'Gender',
            ),
            const Divider(
              color: Color(0xffF1F1F1),
              thickness: 1,
            ),
            const ItemEditProfileWidget(
              subtitles: 'Tanggal Lahir',
              title: 'Pilih Tanggal Lahir',
            ),
            const Divider(
              color: Color(0xffF1F1F1),
              thickness: 1,
            ),
            const ItemEditProfileWidget(
              subtitles: 'Status Pernikahan',
              title: 'Status Pernikahan',
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: const Color(0xffF1F1F1),
            ),
            const ItemEditProfileWidget(
              subtitles: 'No Handphone',
              title: 'No Handphone',
            ),
            const Divider(
              color: Color(0xffF1F1F1),
              thickness: 1,
            ),
            const ItemEditProfileWidget(
              subtitles: 'Alamat Jalan',
              title: 'Alamat',
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: const Color(0xffF1F1F1),
            ),
            const ItemEditProfileWidget(
              subtitles: 'Pendidikan Terakhir',
              title: 'Pendidikan Terakhir',
            ),
            const Divider(
              color: Color(0xffF1F1F1),
              thickness: 1,
            ),
            const ItemEditProfileWidget(
              title: 'Pekerjaan',
              subtitles: 'Pekerjaan Terakhir',
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: const Color(0xffF1F1F1),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: CustomTextButton(
                text: 'Hapus Akun',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
            const Divider(
              color: Color(0xffF1F1F1),
              thickness: 1,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: CustomTextButton(
                text: 'Logout',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: const Color(0xffF1F1F1),
            ),
          ],

          // gapH48,
          // Container(
          //   width: double.infinity,
          //   height: 17,
          //   color: Color(0xffF1F1F1),
          // ),
          // gapH20,
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 30),
          //   child: CustomTextButton(
          //     text: 'Ubah Profil',
          //     style: blueTextStyle.copyWith(
          //       fontSize: 16,
          //       decoration: TextDecoration.underline,
          //     ),
          //   ),
          // ),
          // gapH20,
          // Container(
          //   width: double.infinity,
          //   height: 17,
          //   color: Color(0xffF1F1F1),
          // ),
          // const ItemEditProfileWidget(
          //   subtitles: 'Pilih Gender',
          //   title: 'Gender',
          // ),
        ),
      ),
    );
  }
}
