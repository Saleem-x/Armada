import 'package:flutter/material.dart';

class SubcatWidget extends StatefulWidget {
  const SubcatWidget({super.key});

  @override
  State<SubcatWidget> createState() => SubcatWidgetState();
}

class SubcatWidgetState extends State<SubcatWidget> {
  List<String> cardList = [
    'Card 1',
    'Card 2',
    'Card 3',
    'Card 4',
    'Card 5',
    'Card 6',
    'Card 7',
    'Card 8',
    'Card 9',
    'Card 10',
    'Card 11',
    'Card 12',
    'Card 13',
    'Card 14',
    'Card 15',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 16),
          Container(
            height: 100,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: cardList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 80,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text(cardList[index]),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
