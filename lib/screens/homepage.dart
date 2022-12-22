// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seed/components/button_category.dart';
import 'package:seed/components/camp_format.dart';
import 'package:seed/components/color.dart';
import 'package:seed/components/font_format.dart';
import 'package:seed/components/news_format.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool page = true;

@override
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyColor,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: whiteColor,
        shadowColor: bgGreyColor.withOpacity(0.5),
        title: FontFormat(
          text: 'SEED',
          weight: FontWeight.bold,
          size: 30.w,
          textColor: blackColor,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 18.w, 0, 18.w),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          page = true;
                        });
                      },
                      child: page == true
                          ? ButtonCategory(
                              bgColor: blueColor,
                              image: 'images/news.png',
                              imagesColor: whiteColor,
                              title: 'ข่าว SEED',
                              titleColor: whiteColor,
                            )
                          : ButtonCategory(
                              bgColor: whiteColor,
                              image: 'images/news.png',
                              imagesColor: blackColor,
                              title: 'ข่าว SEED',
                              titleColor: blackColor,
                            ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          page = false;
                        });
                      },
                      child: page == false
                          ? ButtonCategory(
                              bgColor: blueColor,
                              image: 'images/camp.png',
                              imagesColor: whiteColor,
                              title: 'กิจกรรม SEED',
                              titleColor: whiteColor,
                            )
                          : ButtonCategory(
                              bgColor: whiteColor,
                              image: 'images/camp.png',
                              imagesColor: blackColor,
                              title: 'กิจกรรม SEED',
                              titleColor: blackColor,
                            ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'images/point_down.png',
                  width: 20.w,
                  height: 20.w,
                ),
                SizedBox(width: 20.w),
                if (page == true) ...[
                  FontFormat(
                    text: 'ข่าวสาร',
                    weight: FontWeight.w600,
                    size: 20.w,
                  ),
                ] else ...[
                  FontFormat(
                    text: 'กิจกรรม',
                    weight: FontWeight.w600,
                    size: 20.w,
                  ),
                ]
              ],
            ),
            SizedBox(height: 15.w),
            if (page == true) ...[
              news(),
            ] else ...[
              camp(),
            ],
          ],
        ),
      ),
    );
  }

  Widget news() {
    return Expanded(
      child: ListView(
        children: [
          NewsFormat(
            title: 'เรื่องเราบ้านเรา ของดีบ้านเรา ณ จังหวัดเชียงราย',
            time: '5 days ago',
            period: '7 ธันวาคม 2565',
            image: 'images/Screen Shot 2565-12-08 at 13.10-1.png',
            detail: "อธิบดีกรมการข้าวมีอะไรฝากถึงเยาวชนในเรื่องการใช้เทคโนโลยีประยุกต์ใช้กับการเกษตร เพื่อพัฒนาของดีในบ้านเกิดของเรา",
          ),
          NewsFormat(
            title: 'เรื่องเล่าบ้านเรา ของดีบ้านเรา ที่เชียงราย',
            time: '5 days ago',
            period: '7 ธันวาคม 2565',
            image: 'images/Screen Shot 2565-12-08 at 13.10.png',
            detail:
                "SEED Thailand พาไปรู้จักพันธ์ข้าวเชียงราย หลายคนอาจไม่เคยทราบว่าเชียงรายมีพันธุ์ข้าวที่ปลูกได้ที่แค่จังหวัดเชียงรายเท่านั้น โดยจะเป็นพันธุ์ข้าวไหน ลักษณะพิเศษเป็นอย่างไร มาชมกันได้เลย",
          ),
          NewsFormat(
            title: 'SEED Thailand พาไปรู้จัก “ปลากุเลาเค็มตากใบ',
            time: '5 days ago',
            period: '7 ธันวาคม 2565',
            image: 'images/Screen Shot 2565-12-08 at 13.16.png',
            detail:
                "SEED Thailand พาไปรู้จัก “ปลากุเลาเค็มตากใบ” เจ้าของฉายา “ราชาแห่งปลาเค็ม” กับ เชฟชุมพล คนไทยที่ยกระดับอาหารไทยโดยการนำเอาปลากุเลาเค็มตากใบ จังหวัด นราธิวาส มาเสริฟ์ให้ผู้นำ APEC 2022 ได้ลิ้มรส แล้วได้รับเสียงชื่นชมมากมายจนเกิดกระแสคนไทยช่วยอุดหนุนปลากุเลา โดยเชฟชุมพลนั้นได้กล่าวถึงปลากุเลาของนราธิวาสไว้ว่า “หากปลากุเลาเค็มของเรา มีการพัฒนา ทำแบรนด์ดีๆ เชื่อว่าสู้เอนโชวี่ของอิตาลีได้สบาย”",
          ),
          NewsFormat(
            title: 'SEED Thailand พาชมงาน  ไทยแลนด์ 4.0 ประเทศไทยไปไกลกว่าที่คิด',
            time: '5 days ago',
            period: '7 ธันวาคม 2565',
            image: 'images/Screen Shot 2565-12-08 at 13.17.png',
            detail:
                "SEED Thailand พาชมงาน  ไทยแลนด์ 4.0 ประเทศไทยไปไกลกว่าที่คิด เยาวชนร่วมแข่ง Rov สุดมันส์ ชิงเงินรางวัลกว่า 200,000 บาท บรรยากาศภายในงานมีอะไรบ้าง งานนี้เยาวชนมาทำอะไรกันมาดูกันเลย",
          ),
          NewsFormat(
            title: 'SEED Thailand REPORTER กับ จิรายุส ทรัพย์ศรีโสภา',
            time: '5 days ago',
            period: '7 ธันวาคม 2565',
            image: 'images/Screen Shot 2565-12-08 at 13.21 1.png',
            detail:
                "SEED Thailand REPORTER กับ จิรายุส ทรัพย์ศรีโสภา ประธานเจ้าหน้าที่บริหาร บริษัท บิทคับ แคปปิตอล กรุ๊ป โฮลดิ้งส์ จำกัด พี่ท็อป Bitkub ฝากถึงเยาวชน 'เก็บเงินสด เก็บเงิดสด เก็บเงินสด' พร้อมทั้งให้แนวทางการเตรียมตัวกับสถานการณ์โลกในอนาคต มีประเด็นไหนน่าสนใจบ้าง มารับชมกันได้เลย",
          ),
        ],
      ),
    );
  }

  Widget camp() {
    return Expanded(
      child: ListView(
        children: [
          CampFormat(
            status: 'pending',
            title: 'กสทช. X SEED THAILAND',
            time: '3 days ago',
            exp: '10 ธ.ค. 2565',
            campPoint: '10,000',
            seedCoin: '10,000',
            image: 'images/317803664_1168069123837903_6794092330236793316_n.jpeg',
            persons: '20',
            period: '8 ธ.ค. 65 - 10 ธ.ค. 65',
            location: 'กรุงเทพมหานคร',
            require: 'ผู้ผ่านกิจกรรมสตาฟ SEED ',
            detail:
                '📣ปลุกพลังคนรุ่นใหม่ สร้างสรรค์โลกดิจิทัล กับกิจกรรม DIGITAL YOUTH NETWORK THAILAND เยาวชนอาสาดิจิทัล ซึ่งเป็นส่วนหนึ่งในโครงการ HACKaTHAILAND 2023 : DIGITAL INFINITY . 📱กิจกรรมที่จะช่วยส่งต่อแนวคิด Digital Literacy เสริมสร้างเกราะป้องกันให้กับเยาวชน นักเรียน นักศึกษา พร้อมก้าวสู่การเป็นผู้นำเยาวชนในโลกดิจิทัล ในหลักสูตร DIGITAL YOUTH NETWORK THAILAND เยาวชนอาสาดิจิทัล . 💻โดยหลักสูตรในรอบ DIGITAL TRAINER มีวิทยากรที่มาร่วมถ่ายทอดองค์ความรู้ แชร์ประสบการณ์ พร้อมเสริมสร้างทักษะในการปรับตัวบนโลกดิจิทัล อาทิ Introduction to Digital Youth Network, Digital Skill and Knowledge, 21st-Century Opportunity, Youth Leader New Gen และอื่น ๆ อีกมายมาย . ✏️เปิดรับสมัคร วันนี้ – 10 ธันวาคม 2565 คลิกไปที่ https://forms.gle/g555mMnpTtRYXiic8 🌟ประกาศผลวันที่ 12 ธันวาคม 2565 (เพียง 50 คน เท่านั้น!) . โดยผู้ที่ผ่านการคัดเลือกจะต้องเข้ารับการอบรมเป็นเวลา 3 วัน 2 คืน ในพื้นที่กรุงเทพมหานคร ระหว่างวันที่ 22-24 ธันวาคม 2565 ติดต่อสอบถามเพิ่มเติมทีมงาน SEED Thailand 0958158305',
          ),
          CampFormat(
            status: 'pending',
            title: '[SEED : เยาวชนไทยหัวใจอาสา ]',
            time: '3 days ago',
            exp: '10 ธ.ค. 2565',
            campPoint: '10,000',
            seedCoin: '10,000',
            image: 'images/316670868_1161280734516742_7499660514032764876_n.jpeg',
            persons: '20',
            period: '23 ธ.ค. 65',
            location: 'โรงเรียน สุรศักดิ์ มนตรี',
            require: 'ผู้ผ่านกิจกรรมสตาฟ SEED ',
            detail:
                'ในโครงการ SEED Digital Insight ภาคกลาง !! กลับมาแล้วกับโครงการ Digital Insight พี่สอนให้น้องรู่เท่าทันโลกออนไลน์ พบกับการบรรยายจากพี่ ๆ วิทยากรมืออาชีพจาก SEED ภาคกลาง ในหัวข้อมากมายทั้ง Digital Literacy, ภัยคุกคามบนโลกออนไลน์, Soft power of Thailand รวมถึงกิจกรรมละลายพฤติกรรมอื่น ๆ ที่สนุกสนานอย่างแน่นอน พบกันในวันที่ 23 พฤศจิกายน 2565 นี้ เวลา 08.30 - 16.30 น. ณ โรงเรียน สุรศักดิ์ มนตรี และ วันที่ 27 พฤศจิกายน 2565 ในรูปแบบออนไลน์ เตรียมพร้อมรับความสนุกกันได้เลย!',
          ),
        ],
      ),
    );
  }
}
