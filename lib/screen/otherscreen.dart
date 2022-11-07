import 'package:flutter/material.dart';
import 'package:myapp/widget/navigationbar.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('other event'),
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
                child: Text('other screen'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
