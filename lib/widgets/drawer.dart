import 'package:flutter/material.dart';
import 'package:ai_driven_essay_application_flutter/home_page.dart'; // Ensure this import points correctly to your HomePage file

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromRGBO(35, 35, 35, 5),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF171717),
              ),
              child: Text(
                'MEGAN AI',
                style: TextStyle(
                  color: Color.fromRGBO(0, 255, 194, 1),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
