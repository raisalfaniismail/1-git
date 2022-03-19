import 'package:flutter/material.dart';

class Telegramhome extends StatefulWidget {
  @override
  _TelegramhomeState createState() => _TelegramhomeState();
}

class _TelegramhomeState extends State {
      SingleTickerProviderStateMixin (
    TabController _tabcontroller;
    @override 
    void initState() {
      super.initstate();
      _tabcontroller = TabController(length: 4, vsym: this, initialIndex: 1);
    }
  )
  
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

