import 'package:flutter/material.dart';
import 'package:merchant/Tabbar/CustomTabBar.dart';

class SaldoMenu extends CustomTabBar {
  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.only(left: 10.0),
          height: 100, 
          decoration: BoxDecoration(
          boxShadow: [
          BoxShadow(color: Colors.grey,blurRadius: 5),
            ],
            color: Colors.white,
            border: Border.all(
              color: Colors.white, width: 1, 
            ), 
          ),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("SALDO GEMS CASH",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  )),
              Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Rp ",
                      style: TextStyle(
                        color: Color(0XFF39afb5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "20.000.000",
                    style: TextStyle(
                      color: Color(0XFF39afb5),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 30, width: 90,
                padding: EdgeInsets.only(right: 10),
                child: RaisedButton(
                  child: Text(
                    "Withdraw",
                    style: TextStyle(
                      color: Colors.white,fontSize: 11
                    ),
                  ),
                  color: Color(0xFF14b8c7),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 30.0,
                width: 90.0,
                padding: EdgeInsets.only(right: 10),
                child: RaisedButton(
                  child: Text(
                    "Scan",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFF14b8c7),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
    

    
  }
}