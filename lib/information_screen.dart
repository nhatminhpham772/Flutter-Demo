// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:tuan_01/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _startTimer() {
    Future.delayed(const Duration(seconds: 10), _goNext);
  }

  _goNext() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Họ và Tên: Phạm Nhật Minh', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('MSSV: 20110676', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('Ngày sinh: 07/07/2002', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}