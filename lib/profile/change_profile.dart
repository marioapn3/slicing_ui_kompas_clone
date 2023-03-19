import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kompas_clone_mario/widgets/button.dart';
import 'package:kompas_clone_mario/widgets/form_field.dart';

class ChangeProfile extends StatelessWidget {
  const ChangeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubah Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Gap(16),
          const Text(
            'Data Pribadi',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          const Gap(16),
          const Text(
            'KG Media ID',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const Gap(8),
          const Text(
            'johndoe@gmail.com',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const Gap(16),
          CustomFormFieldWidget(
            labelText: 'Nama Lengkap',
            controller: TextEditingController(),
          ),
          const Gap(16),
          CustomFormFieldWidget(
            labelText: 'Jenis Kelamin',
            controller: TextEditingController(),
          ),
          const Gap(16),
          CustomFormFieldWidget(
            labelText: 'Tanggal Lahir',
            controller: TextEditingController(),
          ),
          const Gap(16),
          CustomFormFieldWidget(
            labelText: 'No Handphone',
            controller: TextEditingController(),
          ),
          const Gap(16),
          Expanded(
              child: Container(
            height: 1.0,
            color: Colors.black,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
          )),
          const Gap(16),
          const Text(
            'Alamat Tempat Tinggal',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          const Gap(16),
          CustomFormFieldWidget(
            labelText: 'Alamat Jalan',
            controller: TextEditingController(),
          ),
          const Gap(16),
          CustomFormFieldWidget(
            labelText: 'Provinsi',
            controller: TextEditingController(),
          ),
          const Gap(16),
          Row(
            children: [
              Expanded(
                child: CustomFormFieldWidget(
                  labelText: 'Kecamatan',
                  controller: TextEditingController(),
                ),
              ),
              const Gap(16),
              Expanded(
                child: CustomFormFieldWidget(
                  labelText: 'Kode Pos',
                  controller: TextEditingController(),
                ),
              ),
            ],
          ),
          const Gap(16),
          CustomFormFieldWidget(
            labelText: 'Pendidikan Terakhir',
            controller: TextEditingController(),
          ),
          const Gap(16),
          CustomFormFieldWidget(
            labelText: 'Jenis Pekerjaan',
            controller: TextEditingController(),
          ),
          const Gap(16),
          const PrimaryButton(text: "Simpan"),
          const Gap(32),
        ],
      ),
    );
  }
}
