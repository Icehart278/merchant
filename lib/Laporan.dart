import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Laporan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       return ListView(
         children: <Widget>[
           Container(
             alignment:Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
             child:
             Text('Pilih Jenis Transaksi',style: TextStyle(color: Color(0XFF39afb5),),), 
           ),
            Container( width: 300, padding: EdgeInsets.fromLTRB(20,0,20,0), 
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
            Container( alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child:
              Text('Pilih Waktu Transaksi',style: TextStyle(color: Color(0XFF39afb5),),), 
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                Row( mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                     Radio(
                        activeColor: Colors.blueAccent,
                        value: 0,
                        groupValue: _currValue,
                        onChanged: (int i) => _currValue = i),
                        new Text('Transaksi Harian   ',
                        style: new TextStyle(color: Color(0XFF39afb5),fontSize: 15.0,),),
                        DropdownButton(
                          iconDisabledColor:Color(0XFF39afb5), 
                          iconEnabledColor: Color(0XFF39afb5),
                          icon: Icon(FontAwesomeIcons.calendar,size: 15,),
                          items: null,
                          onChanged: null,
                          disabledHint: Text("            ",style: TextStyle(color: Color(0XFF39afb5),),),
                        ),
                        Text('   s/d  ',style:TextStyle(fontSize: 15,color: Color(0XFF39afb5),),),
                        DropdownButton(
                          iconDisabledColor:Color(0XFF39afb5), 
                          iconEnabledColor: Color(0XFF39afb5), 
                          icon: Icon(FontAwesomeIcons.calendar,size: 15,),
                          items: null,
                          onChanged: null,
                          disabledHint: Text("            ",style: TextStyle(color: Color(0XFF39afb5),),),
                        ),
                  ],
                  ),
                  
                  Row( mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[ 
                      Radio(
                        activeColor: Colors.blueAccent,
                        value: 0,
                        groupValue: _currValue,
                        onChanged: (int i) => _currValue = i),
                        new Text('Transaksi Bulanan ',
                        style: new TextStyle(color: Color(0XFF39afb5),fontSize: 15.0,),),
                        DropdownButton(
                          iconDisabledColor:Color(0XFF39afb5), 
                          iconEnabledColor: Color(0XFF39afb5), 
                          icon: Icon(FontAwesomeIcons.calendar,size: 15,),
                          items: null,
                          onChanged: null,
                          disabledHint: Text("            ",style: TextStyle(color: Color(0XFF39afb5),),),
                        ),
                        Text('   s/d  ',style:TextStyle(fontSize: 15,color: Color(0XFF39afb5),),),
                        DropdownButton(
                          iconDisabledColor:Color(0XFF39afb5), 
                          iconEnabledColor: Color(0XFF39afb5), 
                          icon: Icon(FontAwesomeIcons.calendar,size: 15,),
                          items: null,
                          onChanged: null,
                          disabledHint: Text("            ",style: TextStyle(color: Color(0XFF39afb5),),),
                        ),
                  ],
                  ),
                  ],
              ),
             Container(
              height: 80, 
              padding: EdgeInsets.all(20),
              child:
             RaisedButton(
              color: Color(0XFF39afb5),
              elevation: 4.0,
              child: new Text("Lihat",style: TextStyle(color:Colors.white),),
              onPressed: (){},
              shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
              ),
              ),
              ),
              ],
              );
  }
}      

@override
int _currValue = 1;
