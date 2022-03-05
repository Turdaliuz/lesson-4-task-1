import 'package:daryo_app/daryo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Daryo.uz'),
              Icon(Icons.search),
            ],
          ),
          bottom: const TabBar(
              isScrollable: true,
              tabs: [
            Tab(child: Text("So'ngi yangiliklar")),
            Tab(child: Text("Asosiy yangiliklar")),
            Tab(child: Text("Eng ko'p o'qilgan")),


          ],),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daryo',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                        SizedBox(width: 40),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Text(
                                'Lotincha',
                                style: TextStyle(
                                  color: Colors.cyan,
                                  fontSize: 19,
                                  backgroundColor: Colors.white70,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Kirilcha',
                                style: TextStyle(color: Colors.white, fontSize: 19),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 38),
                    Row(

                      children: [

                        Text('Toshkent', style: TextStyle(color: Colors.white70, fontSize: 18),),

                        SizedBox(width: 120),

                        Text('🌦 +12 C', style: TextStyle(color: Colors.white70, fontSize: 18),),
                      ],
                    ),

                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.5, color: Color(0xFFFFFFFF)),
                        ),

                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [
                                Icon(Icons.monetization_on_outlined, size: 18,),
                                Text('10890', style: TextStyle(color: Colors.white70, fontSize: 16),),
                              ],
                            ),

                            Row(
                              children: [
                                Icon(Icons.euro, size: 18,),
                                Text('12134', style: TextStyle(color: Colors.white70, fontSize: 16),),
                              ],
                            ),

                            Row(
                              children: [
                                Icon(Icons.attach_money_rounded, size: 18,),
                                Text('100', style: TextStyle(color: Colors.white70, fontSize: 16),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text('Qo`llanma ekranini ko`rsatish'),
                tileColor: Colors.yellowAccent,

                leading: Icon(Icons.category),
              ),
              ListTile(
                title: Text('So`ngi yangiliklar'),
                tileColor: Colors.black12,

                leading: Icon(Icons.watch_later_outlined),
              ),
              ListTile(
                title: Text('Mahalliy'),
                leading: Icon(Icons.widgets_outlined),
              ),
              ListTile(
                title: Text('Dunyo'),
                leading: Icon(Icons.margin),
              ),
              ListTile(
                title: Text('Texnologiyalar'),
                leading: Icon(Icons.watch_later_outlined),
              ),
              ListTile(
                title: Text('Tanlangan xabarlar',style: TextStyle(color: Colors.cyan),),
                leading: Icon(Icons.watch_later_outlined),
              ),
              ListTile(
                title: Text("Ma'daniyat"),
                leading: Icon(Icons.watch_later_outlined),
              ),
              ListTile(
                title: Text('Avto olam'),
                leading: Icon(Icons.watch_later_outlined),
              ),
              ListTile(
                title: Text('Sport'),
                leading: Icon(Icons.watch_later_outlined),
              ),
              ListTile(
                title: Text('Foto'),
                leading: Icon(Icons.watch_later_outlined),
              ),
              ListTile(
                title: Text('Lifestyle'),
                leading: Icon(Icons.watch_later_outlined),
              ),
              ListTile(
                title: Text('Kolumnistlar'),
                leading: Icon(Icons.watch_later_outlined),
              ),
              ListTile(
                title: Text('Afisha'),
                leading: Icon(Icons.watch_later_outlined),
              ),   ListTile(
                title: Text('Valyutalar kursi'),
                leading: Icon(Icons.watch_later_outlined),
              ),   ListTile(
                title: Text('Ob-havo'),
                leading: Icon(Icons.watch_later_outlined),
              ),   ListTile(
                title: Text('Foydalanish shartlari'),
                leading: Icon(Icons.watch_later_outlined),
              ),   ListTile(
                title: Text('"Daryo" haqida'),
                leading: Icon(Icons.watch_later_outlined),
              ),   ListTile(
                title: Text('Sozlashlar'),
                leading: Icon(Icons.watch_later_outlined),
              ),


            ],
          ),
        ),

        body: TabBarView(
          children: [
            Daryo(),
            Daryo(),
            Daryo(),

          ],
        ),
      ),
    );
  }
}



