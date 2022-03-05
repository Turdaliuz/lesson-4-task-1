import 'package:flutter/material.dart';

import 'package:daryo_app/models/static.dart';
import 'package:flutter/widgets.dart';

class Daryo extends StatelessWidget {
  const Daryo({Key? key}) : super(key: key);


  static List<Tables> table = [
    Tables("Dunyo", "assets/images/rasm.png", "18 mart 2022", "12323",
        "Boeing Rossiya aviakompaniyalariga ehtiyot qismlar yetkazib berish va texnik xizmat ko‘rsatishni to‘xtatdi"),
    Tables("Sport", "assets/images/img_1.png", "19 mart 2022", "12343",
        "“Milan” va “Inter” Italiya Kubogi o‘yinidan oldin Ukrainani qo‘llab-quvvatlash aksiyasida ishtirok etdi. Andrey Shevchenko muxlislarga murojaat qildi"),
    Tables("Texnologiya", "assets/images/img.png", "20 mart 2022", "41232",
        "Huawei kompaniyasi Jahon mobil kongressida Guide kelajak tarmog‘i modelini taqdim etdi"),
    Tables("Tezkor", "assets/images/img_2.png", "21 mart 2022", "51232",
        "Samarqanddan Irkutskka uchgan samolyotdagi 61 nafar yo‘lovchining bagaji aeroportda qoldirib ketildi"),
    Tables("Narxlar", "assets/images/img_3.png", "22 mart 2022", "16237",
        "Rossiya Markaziy banki zudlik bilan asosiy stavkani 20 foizgacha oshirdi. Bu haqda Forbes nashri xabar bermoqda."),
    Tables("Maslahatlar", "assets/images/img_4.png", "23 mart 2022", "16232",
        "Vazn tashlashga jiddiy qaror qilganlar voz kechishi kerak bo‘lgan 7 ta zararli odat"),
    Tables("Dunyo", "assets/images/rasm.png", "18 mart 2022", "12323",
        "Boeing Rossiya aviakompaniyalariga ehtiyot qismlar yetkazib berish va texnik xizmat ko‘rsatishni to‘xtatdi"),
    Tables("Sport", "assets/images/img_1.png", "19 mart 2022", "12343",
        "“Milan” va “Inter” Italiya Kubogi o‘yinidan oldin Ukrainani qo‘llab-quvvatlash aksiyasida ishtirok etdi. Andrey Shevchenko muxlislarga murojaat qildi"),
    Tables("Texnologiya", "assets/images/img.png", "20 mart 2022", "41232",
        "Huawei kompaniyasi Jahon mobil kongressida Guide kelajak tarmog‘i modelini taqdim etdi"),
    Tables("Tezkor", "assets/images/img_2.png", "21 mart 2022", "51232",
        "Samarqanddan Irkutskka uchgan samolyotdagi 61 nafar yo‘lovchining bagaji aeroportda qoldirib ketildi"),
    Tables("Narxlar", "assets/images/img_3.png", "22 mart 2022", "16237",
        "Rossiya Markaziy banki zudlik bilan asosiy stavkani 20 foizgacha oshirdi. Bu haqda Forbes nashri xabar bermoqda."),
    Tables("Maslahatlar", "assets/images/img_4.png", "23 mart 2022", "16232",
        "Vazn tashlashga jiddiy qaror qilganlar voz kechishi kerak bo‘lgan 7 ta zararli odat"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:       ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: table.length,
        itemBuilder: (BuildContext context, int index) {
          return homePage(table[index], context);
        },
      ),
    );
  }
}

Widget homePage(Tables nom, context) {
  return Container(
    margin: EdgeInsets.only(bottom: 2),
    decoration: BoxDecoration(
        color: Colors.black12, borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              nom.category,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SizedBox(
              width: 92,
            ),
            Text(
              nom.date,
              style: TextStyle(color: Colors.blueGrey),
            ),
            SizedBox(
              width: 16,
            ),
            Row(
              children: [
                const Icon(Icons.visibility_outlined, size: 14),
                Text(
                  nom.views,
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              nom.image,
              width: 116,
            ),
            Container(
              width: 220,
              padding: EdgeInsets.only(left: 8, bottom: 6),
              child: Text(
                nom.texts,
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
