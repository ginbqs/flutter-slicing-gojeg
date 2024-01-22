import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojeg/components/header.dart';
import 'package:gojeg/datas/listIcon.dart';
import 'package:gojeg/datas/listNews.dart';
import 'package:gojeg/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Searching
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8E8E8),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: const Color(0xFFE8E8E8)),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/search.svg',
                            color: dark1,
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Cari layanan, makanan, & tujuan',
                            style: regular14.copyWith(
                              color: const Color(0xFF999798),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Stack(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35 / 2),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD1E7EE),
                              borderRadius: BorderRadius.circular(35 / 2),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: SvgPicture.asset(
                              'assets/icons/star.svg',
                              color: const Color(0xFF38BBDA),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Gopay
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: blue1,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 8,
                            width: 2,
                            decoration: BoxDecoration(
                              color: const Color(0xFFBBBBBB),
                              borderRadius: BorderRadius.circular(1),
                            ),
                          ),
                          SizedBox(height: 4),
                          Container(
                            height: 8,
                            width: 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Container(
                            height: 11,
                            width: 118,
                            decoration: BoxDecoration(
                              color: const Color(0xFF9CCDDB),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          height: 68,
                          width: 127,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/gopay.png',
                                  height: 14),
                              Text(
                                'Rp12.379',
                                style: bold16,
                              ),
                              Text(
                                'Klik & cek riwayat',
                                style: semibold12_5.copyWith(color: green2),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    ...iconGopay.map(
                      (gopay) => Flexible(
                        fit: FlexFit.tight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/${gopay.icon}.svg',
                                color: blue1,
                              ),
                            ),
                            Text(
                              gopay.title,
                              style: regular14.copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Menu Icons
            Padding(
              padding: EdgeInsets.only(left: 27, right: 27, top: 32),
              child: SizedBox(
                height: 157,
                child: GridView.count(
                  crossAxisCount: 4,
                  padding: EdgeInsets.all(0),
                  children: [
                    ...iconMenu.map(
                      (icon) => Container(
                        child: Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: icon.icon == 'goclub'
                                    ? Colors.white
                                    : icon.color,
                              ),
                              child: SvgPicture.asset(
                                  'assets/icons/${icon.icon}.svg',
                                  color: icon.icon == 'goclub'
                                      ? icon.color
                                      : icon.icon == 'other'
                                          ? dark2
                                          : Colors.white),
                            ),
                            SizedBox(height: 8),
                            Text(
                              icon.title,
                              style: regular12_5,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Go Club
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 19),
              child: Container(
                width: double.infinity,
                // clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0XFFE8E8E8)),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFEAF3F6),
                      Colors.white,
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 8,
                      top: 4,
                      bottom: 4,
                      child: SvgPicture.asset('assets/icons/dots.svg'),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/star.svg'),
                          SizedBox(width: 16),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '117 XP lagi ada Harta Karun',
                                  style: semibold14,
                                ),
                                SizedBox(height: 8),
                                LinearProgressIndicator(
                                  backgroundColor: dark3,
                                  color: green2,
                                  borderRadius: BorderRadius.circular(2),
                                  value: .8,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          SvgPicture.asset(
                            'assets/icons/left.svg',
                            height: 24,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Akses Cepat
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Akses Cepat',
                    style: bold18,
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xFFE8E8E8),
                      ),
                    ),
                    child: Column(
                      children: [
                        ...[
                          'Pintu masuk motor, MNC Land',
                          'Pintu masuk motor, MNC Land'
                        ].map(
                          (val) => Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: green2,
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/icons/goride.svg'),
                                ),
                                SizedBox(width: 12),
                                Flexible(
                                  fit: FlexFit.tight,
                                  child: Text(
                                    val,
                                    style: regular14,
                                  ),
                                ),
                                SizedBox(width: 16),
                                SvgPicture.asset(
                                  'assets/icons/left.svg',
                                  height: 24,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // gopaylater
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/gopaylater.png',
                    height: 14,
                  ),
                  SizedBox(height: 8),
                  Text('Lebih hemat pake GoPayLater', style: bold16),
                  Text(
                      'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                      style: regular14),
                ],
              ),
            ),

            // news

            ...newsItem.map(
              (news) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color(0xFFE8E8E8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              topRight: Radius.circular(15)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/${news.image}'),
                              fit: BoxFit.cover),
                        ),
                        child: null,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              news.title,
                              style: bold16,
                            ),
                            Text(
                              news.description,
                              style: regular14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
