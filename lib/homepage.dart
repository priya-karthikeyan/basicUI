import 'package:i_am_rich/common/appbar.dart';
import 'package:flutter/material.dart';
import 'package:i_am_rich/signin/farmerSignIn.dart';
import 'package:i_am_rich/signin/doctorSignIn.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title:'Farm Bytes'),
      drawer: MyAppDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the first page
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FarmerSignInPage(),
                      ));
                    },
                    child: Image.asset(
                      'assets/farmer.png',
                     // Set the height as needed
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle speaker icon press (for audio functionality)
                    },
                    child: const Icon(
                      Icons.volume_up,
                      size: 40, // Set the size as needed
                      color: Colors.green, // Set the color as needed
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {

                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DoctorSignInPage(),
                      ));
                    },
                    child: Image.asset(
                      'assets/doctor.png',
                       // Set the height as needed
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle speaker icon press (for audio functionality)
                    },
                    child: const Icon(
                      Icons.volume_up,
                      size: 40, // Set the size as needed
                      color: Colors.green, // Set the color as needed

                    ),
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}


