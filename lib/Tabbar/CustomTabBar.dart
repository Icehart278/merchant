import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:merchant/homepage/Notifikasi.dart';
import 'package:merchant/homepage/Profil.dart';
import 'package:merchant/homepage/Transaksi.dart';
import 'package:merchant/Laporan.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0XFF39afb5),
            title: Text('MITRA GEMS'),
            actions: <Widget>[
              IconButton(icon:
          Icon(FontAwesomeIcons.cog,color: Colors.white,size: 18,), 
          onPressed: () {},
              ),
              ],
            bottom: TabBar( 
                indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 0.0,color: Color(0XFF39afb5) ),
                insets: EdgeInsets.all(0),
              ) ,
               labelColor: Colors.white,
               unselectedLabelColor: Colors.blueGrey,
               labelStyle: TextStyle(fontSize: 12,),
              tabs: [ 
                Tab(icon: Icon(FontAwesomeIcons.exchangeAlt,size: 18,),text:'Transaksi',),
                Tab(icon: Icon(FontAwesomeIcons.fileAlt,size: 18,),text:'Laporan',),
                Tab(icon: Icon(FontAwesomeIcons.university,size: 18,),text: 'Profil',),
                Tab(icon: Icon(FontAwesomeIcons.bell,size: 18,),text: 'Notifikasi',),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Transaksi(),
              Laporan(),
              Profil(),
              Notifikasi(),
            ],
          ),
        ),
      ),
    );
  }
}