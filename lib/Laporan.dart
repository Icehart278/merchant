import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Laporan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       return ListView(children: <Widget>[
          Container( alignment: Alignment.topLeft,
          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child:
            Text('Pilih Jenis Transaksi',style: TextStyle(color: Color(0XFF39afb5),),), 
          ),
          Row( mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Container( width: 300, padding: EdgeInsets.only(left:20), 
            child: DropdownButton( 
            iconDisabledColor:Color(0XFF39afb5), 
            iconEnabledColor: Color(0XFF39afb5), 
            icon: Icon(FontAwesomeIcons.angleDown,),
            isExpanded: true,
            items: null,
            onChanged: null,
            disabledHint: Text("Semua Transaksi",style: TextStyle(color: Color(0XFF39afb5),),),
        ),
          ),
       ],),
       Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(20),
            child: Text('Pilih Waktu Transaksi',style: TextStyle(color: Color(0XFF39afb5),),), 
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             Radio(
              value: 0,
              groupValue: _currValue,
              onChanged: (int i) => _currValue = i),
            ],
            ),
            new Text(
                'Carnivore',
                style: new TextStyle(fontSize: 16.0),
                ),
            ],
       
          
         
           
          
       );   
  }
} 

@override
int _currValue = 1;
