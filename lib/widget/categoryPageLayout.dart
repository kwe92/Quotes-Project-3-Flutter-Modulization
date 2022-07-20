import 'package:flutter/material.dart';

//todo: Put choices list and classes in there on modules
//todo: Figure out a way to make images background image to fil lthe card instead of using the expanded widget
//todo: Maybe diffrent AppBar colors?
//todo: Different name for philosophy page AppBar title?
//todo: Add image property to CategoryChoice class

class CategoryChoice {
  final String title;
  final IconData icon;
  const CategoryChoice({required this.title, required this.icon});
}

List<CategoryChoice> choices = [
  const CategoryChoice(title: 'Philosophy', icon: Icons.home),
  const CategoryChoice(title: 'Forgiveness', icon: Icons.contacts),
  const CategoryChoice(title: 'Failure', icon: Icons.map),
  const CategoryChoice(title: 'Morality', icon: Icons.phone),
  const CategoryChoice(title: 'Fear', icon: Icons.camera_alt),
  const CategoryChoice(title: 'Death', icon: Icons.settings),
  const CategoryChoice(title: 'Anxiety', icon: Icons.photo_album),
  const CategoryChoice(title: 'Dreams', icon: Icons.wifi),
];

class CategoryPageLayout extends StatefulWidget {
  CategoryPageLayout({Key? key}) : super(key: key);

  @override
  State<CategoryPageLayout> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPageLayout> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 4.0,
        children: List.generate(choices.length, (index) {
          return SelectCard(choice: choices[index]);
        }));
  }
}

class SelectCard extends StatelessWidget {
  SelectCard({Key? key, required this.choice}) : super(key: key);
  late CategoryChoice choice;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        semanticContainer: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'lib/assets/jamesallen.webp',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  choice.title,
                  style: TextStyle(fontSize: 18.0),
                )),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/philosophy');
      },
    );
  }
}

/*

TextButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/philosophy');
        },
        icon: Icon(Icons.pin_drop),
        label: Text("Philosophy-Quotes"));



         Expanded(
            child: Icon(
              CategoryChoice.icon,
              size: 45.0,
            ),
          ),
          Text(CategoryChoice.title)

*/
