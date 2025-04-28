import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:practica1_grade_calculator/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState(){
    _closeSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Center(
          child: Hero(
            tag: 'logo',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                width: 150,
                height: 150,
              ),
            ),
          )
      ),

    );
  }

  Future<void> _closeSplash() async {
    Future.delayed(const Duration(milliseconds: 2000),() async {
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 1500),
              pageBuilder: (context,animation,secondaryAnimation) => PostSplash()));
    });
  }
}

class PostSplash extends StatefulWidget {

  @override
  State<PostSplash> createState() => _PostSplashState();
}

class _PostSplashState extends State<PostSplash> {
  @override
  void initState(){
    super.initState();
    _closeSplash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: 'logo',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset('assets/images/logo.png', width: 34,height: 34),
          ),
        ),
        backgroundColor: null,
        toolbarHeight: 70,
      ),
      //backgroundColor: Colors.lightBlue[50],
    );
  }

  Future<void> _closeSplash() async {
    Future.delayed(const Duration(milliseconds: 1300),() async {
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 600),
              pageBuilder: (context,animation,secondaryAnimation) => HomePage(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeThroughTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                );
              }
          )
      );
    });
  }
}

