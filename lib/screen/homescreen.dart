import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widget/navigationbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  FirebaseAnalytics analitic = FirebaseAnalytics.instance;

  @override
  Widget build(BuildContext context) {
    //currenscreen firebase analytics
    analitic.setCurrentScreen(screenName: 'home_sreen');
    return Scaffold(
      appBar: AppBar(
        title: const Text('home screen'),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: NavigationBars(),
      ),
      body: Center(
        child: Material(
          borderRadius: BorderRadius.circular(5),
          color: Colors.indigo,
          child: InkWell(
            splashColor: Colors.white,
            onTap: () async {
              // logevent firebase analytics
              await analitic.logEvent(
                  name: 'example_home_event',
                  parameters: {'costum_param': 'value contum params'});
            },
            child: Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text('home event'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
