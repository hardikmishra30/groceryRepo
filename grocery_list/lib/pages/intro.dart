import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_list/pages/home_page.dart';

// ignore: camel_case_types
class intro_page extends StatelessWidget {
  const intro_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, bottom: 40, top: 140),
            child: Image.asset('lib/images/avocado.png'),
          ),

          //we deliver items at your doorstep
          Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              'We deliver Groceries at your doorsteps',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(
            height: 18,
          ),

          //fresh items everyday
          Text(
            'Fresh items everyday.',
            style: GoogleFonts.notoSerif(
              fontSize: 20,
            ),
          ),

          const Spacer(),

          //get started button
          GestureDetector(
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
              return const HomePage();
            }
            )
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(24),
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const Spacer(),
          
        ],
      ),
    );
  }
}
