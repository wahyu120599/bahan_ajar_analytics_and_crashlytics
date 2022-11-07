import 'package:flutter/material.dart';
import 'package:myapp/widget/navigationbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
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
            onTap: () {},
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
