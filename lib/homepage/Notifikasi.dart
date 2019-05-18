import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Notifikasi extends StatefulWidget {
  Notifikasi({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NotifikasiState createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  DateTime selectedDate = DateTime.now();
  Future<Null> dateTime(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[200],
          title:Text("${selectedDate.toLocal()}",style:TextStyle(color:Colors.black), ),
      ),
      body: Container(
        child: ListView.separated( 
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index)
          {return ListTile(
          title: Text('item $index'),);}
        ),
      ),
    );

    
  }
}






