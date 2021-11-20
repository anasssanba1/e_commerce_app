import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_commerce/features/products/views/female_products_view.dart';
import 'package:e_commerce/features/products/views/male_products_view.dart';

/* void signOut(BuildContext context) async {
    await _authController.signOut();
    _authController.clearAuthPref();
    _authController.authStateStream.listen(
      (User? user) {
        if (user == null) {
          Navigator.pushNamedAndRemoveUntil(
              context, Routes.authView, (Route<dynamic> route) => false);
        }
      },
    );
  } */
class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;

  final List<Widget> pages = [
    MaleProductView(),
    FemaleProductView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        selectedLabelStyle: GoogleFonts.jetBrainsMono(
          color: Colors.deepOrange,
          fontSize: 15,
        ),
        unselectedLabelStyle: GoogleFonts.jetBrainsMono(
          color: Colors.deepOrange,
          fontSize: 15,
        ),
        backgroundColor: Color(0xff121212),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.male),
            label: 'male',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.female),
            label: 'female',
          ),
        ],
      ),
      body: pages[index],
    );
  }
}
