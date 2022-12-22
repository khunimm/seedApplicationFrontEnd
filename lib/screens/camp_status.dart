// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seed/components/color.dart';
import 'package:seed/components/font_format.dart';
import 'package:seed/components/status_format.dart';

class CampStatus extends StatefulWidget {
  CampStatus({Key? key}) : super(key: key);

  @override
  State<CampStatus> createState() => _CampStatusState();
}

String status = 'pending';
bool page = true;

class _CampStatusState extends State<CampStatus> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          backgroundColor: bgGreyColor,
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            shadowColor: bgGreyColor.withOpacity(0.5),
            title: FontFormat(
              text: 'สถานะกิจกรรม',
              weight: FontWeight.w600,
              textColor: Color(0xffC2C2C2),
              size: 20.w,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 18.w, 16.w, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          status = 'pending';
                        });
                      },
                      child: status == 'pending'
                          ? Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: blueColor,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: FontFormat(
                                  text: 'รออนุมัติ',
                                  size: 12.w,
                                  weight: FontWeight.w600,
                                  textColor: blackColor,
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.transparent,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: FontFormat(
                                  text: 'รออนุมัติ',
                                  size: 12.w,
                                  weight: FontWeight.w600,
                                  textColor: blackColor,
                                ),
                              ),
                            ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          status = 'approve';
                        });
                      },
                      child: status == 'approve'
                          ? Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: blueColor,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: FontFormat(
                                  text: 'อนุมัติ',
                                  size: 12.w,
                                  weight: FontWeight.w600,
                                  textColor: blackColor,
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.transparent,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: FontFormat(
                                  text: 'อนุมัติ',
                                  size: 12.w,
                                  weight: FontWeight.w600,
                                  textColor: blackColor,
                                ),
                              ),
                            ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          status = 'declined';
                        });
                      },
                      child: status == 'declined'
                          ? Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: blueColor,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: FontFormat(
                                  text: 'ปฏิเสธ',
                                  size: 12.w,
                                  weight: FontWeight.w600,
                                  textColor: blackColor,
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.transparent,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: FontFormat(
                                  text: 'ปฏิเสธ',
                                  size: 12.w,
                                  weight: FontWeight.w600,
                                  textColor: blackColor,
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
                SizedBox(height: 20.w),
                if (status == 'pending') ...[
                  pending(),
                ] else if (status == 'approve') ...[
                  approved(),
                ] else ...[
                  declined(),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  Widget pending() {
    return Expanded(
      child: ListView(
        children: [
          StatusFormat(
            status: 'รอการอนุมัติ',
            image: 'images/314892169_1151132685531547_2858263846283668721_n.jpeg',
            title: 'เปิดรับสมัครอบรมออนไลน์ “SEED TikTok Reporter รุ่นที่ 1',
            detail:
                "SEED Thailand ร่วมกับ เครือข่ายสำนักข่าวออนไลน์ จัดอบรมออนไลน์กับน้อง ๆ เยาวชนที่สนใจเรียนรู้การเป็นนักข่าวออนไลน์เบื้องต้น หลังจบอบรมสามารถสร้างรายได้ได้จริงในกิจกรรม SEED TikTok Reporter กิจกรรมนี้เหมาะใคร -เหมาะสำหรับผู้ที่ต้องการใช้เวลาว่างให้เป็นประโยชน์ -เหมาะสำหรับผู้ที่ต้องการสร้างรายได้พิเศษระหว่างเรียน -เหมาะสำหรับผู้ที่ชอบการเล่าเขียน อ่านเขียน หรือ หางานอดิเรกด้านสื่อ -เหมาะสำหรับผู้ที่อยู่ฝึกฝนเพิ่มทักษะการเป็น Digital Journalist รายละเอียดเพิ่มเติมโทร 091-804-9645 คุณกัส เนื้อหารายละเอียดหลักสูตรอยู่ใต้โพสต์",
            time: '5 days ago',
            exp: '9 พฤศจิกายน 2565',
            period: '12 พฤศจิกายน 2565 - 13 พฤศจิกายน 2565',
            seedCoin: '8,900',
            campPoint: '25,900',
            location: 'อาคาร ไอทาวเวอร์',
            require: 'ผู้ผ่านกิจกรรมสตาฟSEED',
            persons: '199',
          ),
        ],
      ),
    );
  }

  Widget approved() {
    return Expanded(
      child: ListView(
        children: [
          StatusFormat(
            status: 'ได้รับการอนุมัติ',
            image: 'images/Screen Shot 2565-12-08 at 17.13.45.png',
            title: 'เตรียมพบกันกิจกรรมหลังจากนี้จาก พี่ ๆ "SEED Train the trainer" พร้อมกันทั่วประเทศไทยเร็ว ๆ นี้',
            detail:
                "โอกาสนี้ เยาวชนเครือข่าย SEED Thailand ได้รายงานผลการดำเนินงานในท้องถิ่นต่อสมาชิกวุฒิสภา พร้อมเยี่ยมชมการประชุมวุฒิสภา ณ ห้องประชุมจันทรา อาคารรัฐสภา เเละเยี่ยมชมสัปปายะสภาสถาน พร้อมรับฟังการบรรยายสรุปจากเจ้าหน้าที่สำนักประชาสัมพันธ์ สำนักงานเลขาธิการวุฒิสภา ในวันที่ 7 ธันวาคมที่ผ่านมา สำหรับกิจกรรมสัมมนาเชิงปฏิบัติการ SEED Train The Trainer รุ่นที่ 2 นั้นมีวัตถุประสงค์เพื่อพัฒนาศักยภาพเยาวชนระดับอุดมศึกษาให้เป็นวิทยากรรุ่นใหม่อย่างสร้างสรรค์ที่สามารถพัฒนาจนกลายเป็นต้นแบบที่ดีต่อเด็กและเยาวชนโดยทั่วไป และสนับสนุนให้สามารถเป็นวิทยากรในกิจกรรม Seed Project ระดับมัธยมศึกษาต่อไป รวมถึงเป็นการสร้างเครือข่ายเยาวชนคนรุ่นใหม่ให้มีจิตสำนึกรักและมีส่วนร่วมในการพัฒนาชุมชนหรือประเทศชาติอย่างสร้างสรรค์",
            time: '5 days ago',
            exp: '9 พฤศจิกายน 2565',
            period: '7 ธันวาคม 2565',
            seedCoin: '8,900',
            campPoint: '25,900',
            location: 'อาคาร ไอทาวเวอร์',
            require: 'ผู้ผ่านกิจกรรมสตาฟSEED',
            persons: '199',
          ),
          StatusFormat(
            status: 'ได้รับการอนุมัติ',
            image: 'images/298513881_1086460778665405_7000550569760405541_n.png',
            title: 'กลับมาอีกครั้งกับกิจกรรม SEED Project ปี 2 !!',
            detail:
                "📌 เปิดรับสมัครเยาวชนระดับอุดมศึกษาเข้าร่วมกิจกรรม SEED Project ปี2 ในหัวข้อ “การสร้างผู้นำยุคใหม่ กล้าที่จะเปลี่ยนแปลงท้องถิ่นอย่างสร้างสรรค์” พบกับกิจกรรมสุดพิเศษ ทั้งการบรรยายพิเศษจากผู้เชี่ยวชาญ กิจกรรม workshop พัฒนาท้องถิ่น และกิจกรรมอื่น ๆ ในกิจกรรมอีกมากมาย 📅 กำหนดการ 🔹รุ่น 1 ภาคกลาง ตะวันออกและตะวันตก วันที่ 7-10 กรกฎาคม 2565 ณ กรุงเทพมหานคร 🔹รุ่น 2 ภาคตะวันออกเฉียงเหนือ วันที่ 17-20 กันยายน 2565 ณ ขอนแก่น 🔹รุ่น 3 ภาคใต้ วันที่ 8-11 กันยายน 2565 ณ สงขลา 🔹รุ่น 4 ภาคเหนือ วันที่ 29 กันยายน - 2 ตุลาคม 2565 ณ เชียงใหม่ ใครสนใจสามารถสมัครได้ที่ https://www.seed-thailand.com/register-camp โดยทางกิจกรรมจะประกาศรายชื่อผู้ผ่านการคัดเลือกทั้ง 80 คน ของแต่ละภาค ทางเพจ SEED Thailand เท่านั้น อย่าช้า! โอกาสที่จะได้ร่วมเป็นเยาวชน SEED Thailand แตกหน่อพันธ์ุดี ไม่มีที่สิ้นสุด!",
            time: '5 days ago',
            exp: '14 มิถุนายน 2565',
            period: 'ตามที่กำหนดในกิจกรรม',
            seedCoin: '8,900',
            campPoint: '25,900',
            location: 'ตามที่กำหนดในกิจกรรม',
            require: 'ผู้ผ่านกิจกรรมสตาฟSEED',
            persons: '80',
          ),
        ],
      ),
    );
  }

  Widget declined() {
    return Expanded(
      child: ListView(
        children: [
          StatusFormat(
            status: 'ไม่ได้รับการอนุมัติ',
            image: 'images/Screen Shot 2565-12-08 at 17.13.45.png',
            title: 'เตรียมพบกันกิจกรรมหลังจากนี้จาก พี่ ๆ "SEED Train the trainer" พร้อมกันทั่วประเทศไทยเร็ว ๆ นี้',
            detail:
                "โอกาสนี้ เยาวชนเครือข่าย SEED Thailand ได้รายงานผลการดำเนินงานในท้องถิ่นต่อสมาชิกวุฒิสภา พร้อมเยี่ยมชมการประชุมวุฒิสภา ณ ห้องประชุมจันทรา อาคารรัฐสภา เเละเยี่ยมชมสัปปายะสภาสถาน พร้อมรับฟังการบรรยายสรุปจากเจ้าหน้าที่สำนักประชาสัมพันธ์ สำนักงานเลขาธิการวุฒิสภา ในวันที่ 7 ธันวาคมที่ผ่านมา สำหรับกิจกรรมสัมมนาเชิงปฏิบัติการ SEED Train The Trainer รุ่นที่ 2 นั้นมีวัตถุประสงค์เพื่อพัฒนาศักยภาพเยาวชนระดับอุดมศึกษาให้เป็นวิทยากรรุ่นใหม่อย่างสร้างสรรค์ที่สามารถพัฒนาจนกลายเป็นต้นแบบที่ดีต่อเด็กและเยาวชนโดยทั่วไป และสนับสนุนให้สามารถเป็นวิทยากรในกิจกรรม Seed Project ระดับมัธยมศึกษาต่อไป รวมถึงเป็นการสร้างเครือข่ายเยาวชนคนรุ่นใหม่ให้มีจิตสำนึกรักและมีส่วนร่วมในการพัฒนาชุมชนหรือประเทศชาติอย่างสร้างสรรค์",
            time: '5 days ago',
            exp: '9 พฤศจิกายน 2565',
            period: '7 ธันวาคม 2565',
            seedCoin: '8,900',
            campPoint: '25,900',
            location: 'อาคาร ไอทาวเวอร์',
            require: 'ผู้ผ่านกิจกรรมสตาฟSEED',
            persons: '199',
          ),
          StatusFormat(
            status: 'ไม่ได้รับการอนุมัติ',
            image: 'images/298513881_1086460778665405_7000550569760405541_n.png',
            title: 'กลับมาอีกครั้งกับกิจกรรม SEED Project ปี 2 !!',
            detail:
                "📌 เปิดรับสมัครเยาวชนระดับอุดมศึกษาเข้าร่วมกิจกรรม SEED Project ปี2 ในหัวข้อ “การสร้างผู้นำยุคใหม่ กล้าที่จะเปลี่ยนแปลงท้องถิ่นอย่างสร้างสรรค์” พบกับกิจกรรมสุดพิเศษ ทั้งการบรรยายพิเศษจากผู้เชี่ยวชาญ กิจกรรม workshop พัฒนาท้องถิ่น และกิจกรรมอื่น ๆ ในกิจกรรมอีกมากมาย 📅 กำหนดการ 🔹รุ่น 1 ภาคกลาง ตะวันออกและตะวันตก วันที่ 7-10 กรกฎาคม 2565 ณ กรุงเทพมหานคร 🔹รุ่น 2 ภาคตะวันออกเฉียงเหนือ วันที่ 17-20 กันยายน 2565 ณ ขอนแก่น 🔹รุ่น 3 ภาคใต้ วันที่ 8-11 กันยายน 2565 ณ สงขลา 🔹รุ่น 4 ภาคเหนือ วันที่ 29 กันยายน - 2 ตุลาคม 2565 ณ เชียงใหม่ ใครสนใจสามารถสมัครได้ที่ https://www.seed-thailand.com/register-camp โดยทางกิจกรรมจะประกาศรายชื่อผู้ผ่านการคัดเลือกทั้ง 80 คน ของแต่ละภาค ทางเพจ SEED Thailand เท่านั้น อย่าช้า! โอกาสที่จะได้ร่วมเป็นเยาวชน SEED Thailand แตกหน่อพันธ์ุดี ไม่มีที่สิ้นสุด!",
            time: '5 days ago',
            exp: '14 มิถุนายน 2565',
            period: 'ตามที่กำหนดในกิจกรรม',
            seedCoin: '8,900',
            campPoint: '25,900',
            location: 'ตามที่กำหนดในกิจกรรม',
            require: 'ผู้ผ่านกิจกรรมสตาฟSEED',
            persons: '80',
          ),
        ],
      ),
    );
  }
}
