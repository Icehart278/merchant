import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       return ListView(
         children: <Widget>[
           Container(
             alignment:Alignment.topCenter,
              padding: EdgeInsets.all(15),
              height: 225 , width: 225,
             child:
             Image.asset('assets/Qr_icon.png'),
           ),
           
           Container(
             alignment: Alignment.topCenter,
             height: 250,width: MediaQuery.of(context).size.width/1,
             color: Colors.grey[300],
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
               Stack(
               children: <Widget>[
               Container(
               alignment: Alignment.centerLeft,
               padding: EdgeInsets.only(left:15),
               width: MediaQuery.of(context).size.width/2,
               child: CircleAvatar(
                 backgroundColor: Color(0XFF39afb5),
                 radius: 60, 
                 child: Image.asset('assets/person.png',),
                ), 
             ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(30),
                child: new RawMaterialButton(
                onPressed: () {},
                child: new Icon(
                Icons.camera_alt,
                color: Color(0XFF39afb5),
                size: 25.0,
                ),
                shape: new CircleBorder(),
                elevation: 2.0,
                fillColor: Colors.grey[300],
                // padding: const EdgeInsets.all(30.0),
                ),
                ),
                ],),
              Column( 
                mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text('Nama Mitra',style: TextStyle(fontSize: 17 ,color: Colors.white70,),),
                   Text('TOKO SERBA NGUTANG',style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold),),
                   Text(''),
                   Text('Nomor Ponsel',style: TextStyle(fontSize: 17 ,color: Colors.white70,),),
                   Text('XXXX-XXXX-1234',style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold),),
                   Text(''),
                   Text('Alamat Mitra',style: TextStyle(fontSize: 15 ,color: Colors.white70,),),
                   Text('Jl. In Aja Dulu No.09',style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold),),
                 ],
                 ),
                 ],
                 ),
                 ),     
                 ],
             );
 
  }
}