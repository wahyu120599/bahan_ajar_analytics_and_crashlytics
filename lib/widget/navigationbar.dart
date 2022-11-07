import 'package:flutter/material.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 10),
      color: Colors.indigo,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Icon(Icons.home),
              ),
              const Text('home')
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/OtherScreen');
                },
                child: const Icon(Icons.other_houses),
              ),
              const Text('other screen')
            ],
          )
        ],
      ),
    );
  }
}
