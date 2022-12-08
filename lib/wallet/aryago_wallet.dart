import 'package:arya_go_user/screens/home_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          'AryaGo Wallet',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: size.height * 0.08,
                    width: size.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.black38),
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            DottedBorder(
                              color: Colors.black38,
                              borderType: BorderType.Circle,
                              child: const Icon(
                                Icons.wallet,
                                size: 35,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Wallet Balance',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ],
                        ),
                        const Text(
                          '395.00',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  const Divider(thickness: 0.5, color: Colors.black26),
                  SizedBox(height: size.height * 0.035),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: size.height * 0.045,
                        width: size.width * 0.45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xfffdeb4e),
                            border: Border.all(width: 0.5, color: Colors.black),
                            borderRadius: BorderRadius.circular(6)),
                        child: const Text(
                          'Promotional Offers',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomeScreen())));
                  },
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(4)),
                    child: const Text(
                      'DONE',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
