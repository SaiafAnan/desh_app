import 'package:desh_app/view/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset('images/grpRedCrcl.png'),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('images/mobile.png'),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Text(
                  'Explore Bangladesh!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "The land of the beauty...",
                    labelStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Material(
                color: Colors.green[700],
                borderRadius: BorderRadius.circular(5),
                child: InkWell(
                  onTap: () {
                    Get.to(const RegistrationScreen());
                  },
                  borderRadius: BorderRadius.circular(2),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 60,
                    ),
                    child: Text(
                      "Let\'s Explore",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
