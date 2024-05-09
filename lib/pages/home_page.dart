// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_slicing_three/widgets/penawaran_card.dart';

import '../widgets/fitur_card.dart';
import '../widgets/item_nav.dart';
import '../widgets/kategori_card.dart';
import '../widgets/my_clipper.dart';
import '../widgets/promo_card.dart';
import '../widgets/promo_card2.dart';
import '../widgets/status_card.dart';
import '../widgets/voucher_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEC2028),
        title: RichText(
          text: const TextSpan(
              text: 'Hai, ',
              style: TextStyle(fontSize: 20, color: Colors.white),
              children: [
                TextSpan(
                    text: 'Muhammad',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ]),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.qr_code,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Stack(children: [
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 229,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xffEC2028),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Column(
                children: [
                  ClipPath(
                    clipper: ClipperSimpati(),
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            colors: [Color(0xffE52D27), Color(0xffB31217)]),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '081290112333',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Image.asset('assets/images/simpati.png')
                              ],
                            ),
                            const SizedBox(height: 25),
                            const Text('Sisa Pulsa Anda',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white)),
                            const SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Rp34.000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 84,
                                    height: 34,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF7B731),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: const Center(
                                      child: Text(
                                        'Isi Pulsa',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Divider(
                              thickness: 0.2,
                              color: Color(0xff1E272E),
                            ),
                            const SizedBox(height: 10),
                            RichText(
                              text: const TextSpan(
                                text: 'Berlaku sampai ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                                children: [
                                  TextSpan(
                                      text: '19 April 2020',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            const SizedBox(height: 2),
                            Row(
                              children: [
                                const Text(
                                  'Telkomsel POIN',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  height: 18,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF7B731),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Text(
                                    '172',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StatusCard(
                            title: 'Internet',
                            data: '12.19',
                            satuan: ' GB',
                          ),
                          StatusCard(
                              title: 'Telpon', data: '0', satuan: ' Min'),
                          StatusCard(title: 'SMS', data: '23', satuan: ' SMS'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 5,
                color: const Color(0xffF1F2F6),
              ),
              Expanded(
                child: Column(
                  children: [
                    //body,
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: const Text(
                              'Kategori Paket',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              KategoriCard(
                                icon: 'internet',
                                title: 'Internet',
                              ),
                              KategoriCard(icon: 'telepon', title: 'Telepon'),
                              KategoriCard(icon: 'sms', title: 'SMS'),
                              KategoriCard(icon: 'roaming', title: 'Roaming')
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              KategoriCard(icon: 'hiburan', title: 'Hiburan'),
                              KategoriCard(icon: 'unggulan', title: 'Unggulan'),
                              KategoriCard(
                                  icon: 'tersimpan', title: 'Tersimpan'),
                              KategoriCard(icon: 'riwayat2', title: 'Riwayat'),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Terbaru dari Telkomsel',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'Lihat Semua',
                                style: TextStyle(
                                    color: Color(0xffEC2028),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                PromoCard(image: 'promo1'),
                                PromoCard(
                                  image: 'promo2',
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text('Tanggap COVID-19',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10),
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                PromoCard2(
                                  promo: 'promo3',
                                  title:
                                      'Diskon Spesial 25% Untuk Pelanggan Baru',
                                ),
                                SizedBox(width: 10),
                                PromoCard2(
                                    promo: 'promo4',
                                    title:
                                        'Bebas Kuota Akses Layanan Kesehatan'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'AYO! Pake LinkAja!',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Pakai LinkAja untuk beli pulsa, beli paket data dan bayar tagihan lebih mudah.',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 15),
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                FiturCard(
                                  fitur: 'fitur1',
                                  title: 'Bayar Serba Cepat',
                                ),
                                SizedBox(width: 10),
                                FiturCard(
                                    fitur: 'fitur2', title: 'Cukup Snap QR'),
                                SizedBox(width: 10),
                                FiturCard(
                                    fitur: 'fitur3', title: 'NO! Credit Card')
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Cari Voucher, Yuk!',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'Lihat Semua',
                                style: TextStyle(
                                    color: Color(0xffEC2028),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                VoucherCard(
                                  voucher: 'voucher1',
                                  title: 'Double Benefits from DOUBLE UNTUNG',
                                ),
                                SizedBox(width: 10),
                                VoucherCard(
                                  voucher: 'voucher2',
                                  title: 'Join Undi-Undi Hepi 2020!',
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Penawaran Khusus',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'Lihat Semua',
                                style: TextStyle(
                                    color: Color(0xffEC2028),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                PenawaranCard(
                                    penawaran: 'penawaran1',
                                    title:
                                        'Terus Belajar dari Rumahmu dengan Ruangguru!'),
                                SizedBox(width: 10),
                                PenawaranCard(
                                    penawaran: 'penawaran2',
                                    title:
                                        'Belajar Kini Makin Mudah dengan Paket ilmupedia!')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      color: Colors.white,
                      height: 49,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const ItemNav(
                              isActive: true,
                              icon: 'home',
                              title: 'Beranda',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const ItemNav(
                              isActive: false,
                              icon: 'riwayat',
                              title: 'Riwayat',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const ItemNav(
                              isActive: false,
                              icon: 'bantuan',
                              title: 'Bantuan',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const ItemNav(
                              isActive: false,
                              icon: 'inbox',
                              title: 'Inbox',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const ItemNav(
                              isActive: false,
                              icon: 'akun',
                              title: 'Akun Saya',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
