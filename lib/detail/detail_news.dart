import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kompas_clone_mario/widgets/small_news_card.dart';

class DetailNews extends StatelessWidget {
  const DetailNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/ic_kompas_title.png',
          fit: BoxFit.cover,
          height: 30,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                size: 30,
              )),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Gap(16),
          Row(
            children: const [
              Text('Kompas.com'),
              Icon(
                Icons.navigate_next_outlined,
                size: 20,
                color: Colors.black,
              ),
              Text('Tren'),
            ],
          ),
          const Gap(8),
          const Text(
            'Curhat Karyawan Google yang dipecat, dari kesal hingga merasa terbuang',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.justify,
          ),
          Row(
            children: const [
              Text(
                'Tekno',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gap(5),
              Text(
                'Selasa, 24 Januari 2023, 12.48 WIB',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Gap(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.thumb_up_alt_outlined,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.thumb_down_alt_outlined,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.share_outlined,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.save_alt_outlined,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.comment_outlined,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
          const Gap(24),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/img_news_three.png',
              fit: BoxFit.fill,
            ),
          ),
          const Gap(8),
          Row(
            children: const [
              Text('Penulis : ', style: TextStyle(fontSize: 16)),
              Text(
                'Lely Maulida',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Gap(16),
          RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(
              text: 'KOMPAS.com - ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Google akhir pekan lalu mengumumkan Pemutusan Hubungan Kerja (PHK) terhadap 12.000 karyawan atau setara sekitar 6 persen dari total karyawan perusahaan di seluruh dunia.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const Gap(20),
          const Text(
            'PHK massal Google memengaruhi sejumlah karyawan baik level senior maupun mereka '
            'yang baru dipromosikan. Praktik ini lantas memicu rasa penasaran di kalangan karyawan, '
            'karena beberapa di antaranya berperan penting dalam divisi terkait.  Google akhir pekan '
            'lalu mengumumkan Pemutusan Hubungan Kerja (PHK) terhadap 12.000 karyawan atau setara '
            'sekitar 6 persen dari total karyawan perusahaan di seluruh dunia. ',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16),
          ),
          const Gap(20),
          const Text(
            'Topik itu juga menjadi perbincangan di antara'
            ' karyawan, baik melalui platform komunikasi'
            ' internal maupun pihak ketiga seperti Discord,'
            ' karena mereka yang dipecat tak bisa lagi '
            'mengakses sistem internal perusahaan.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16),
          ),
          const Gap(20),
          const Text(
            'Di antara karyawan yang terimbas layoff (PHK) Google yaitu mantan manajer teknik Justin Moore. Melalui akun LinkedIn, Moore curhat bahwa dia kehilangan pekerjaannya di Google, dan baru mengetahui hal tersebut setelah akunnya dinon-aktifkan otomatis dari sistem perusahaan pada pukul 3 pagi waktu Amerika Serikat.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color(0xffF1F1F1),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Halaman',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                const Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox.fromSize(
                          size: const Size(32, 32),
                          child: ClipOval(
                            child: Material(
                              color: Colors.blue,
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(4),
                        SizedBox.fromSize(
                          size: const Size(32, 32),
                          child: ClipOval(
                            child: Material(
                              color: Colors.white,
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Text(
                                      '2',
                                    ), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(4),
                        SizedBox.fromSize(
                          size: const Size(32, 32),
                          child: ClipOval(
                            child: Material(
                              color: Colors.white, // button color
                              child: InkWell(
                                // splash color
                                onTap: () {}, // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Text(
                                      '3',
                                    ), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 32.0,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          color: Colors.blue,
                        ),
                        child: const Center(
                          child: Text(
                            'Show All',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_down_alt_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.save_alt_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      splashColor: Colors.blue,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Gap(16),
              ],
            ),
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SmallNewsCard(
                  image: 'assets/img_news_two.png',
                  title:
                      'Hasil Indonesia Masters 2023: Selamat Datang Kembali,Praveen/Melati!'),
              SmallNewsCard(
                  image: 'assets/img_news_three.png',
                  title:
                      'PHK massal Google, Karyawan google kesal hingga merasa terbuang'),
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SmallNewsCard(
                  image: 'assets/img_news_two.png',
                  title:
                      'Hasil Indonesia Masters 2023: Selamat Datang Kembali,Praveen/Melati!'),
              SmallNewsCard(
                  image: 'assets/img_news_three.png',
                  title:
                      'PHK massal Google, Karyawan google kesal hingga merasa terbuang'),
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SmallNewsCard(
                  image: 'assets/img_news_two.png',
                  title:
                      'Hasil Indonesia Masters 2023: Selamat Datang Kembali,Praveen/Melati!'),
              SmallNewsCard(
                  image: 'assets/img_news_three.png',
                  title:
                      'PHK massal Google, Karyawan google kesal hingga merasa terbuang'),
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SmallNewsCard(
                  image: 'assets/img_news_two.png',
                  title:
                      'Hasil Indonesia Masters 2023: Selamat Datang Kembali,Praveen/Melati!'),
              SmallNewsCard(
                  image: 'assets/img_news_three.png',
                  title:
                      'PHK massal Google, Karyawan google kesal hingga merasa terbuang'),
            ],
          ),
        ],
      ),
    );
  }
}
