import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class BookRide extends StatelessWidget {
  const BookRide({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.46,
      width: size.width,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Must Read',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.red),
              ),
            ],
          ),
          const Divider(thickness: 1, color: Colors.black12),
          const SizedBox(width: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Estimated Fare',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      '370.00',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
                const Text(
                  'Expected distance 30km and time 30 minutes.',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black45),
                ),
                SizedBox(height: size.height * 0.04),
                const Text(
                  'Estimated fare is being shown as per goole map tracked distance. Fare may charge if there is any charge in distance and time taken during the ride.\nInterested in knowing fare details?\nPlease visit "Fare Table"',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.025),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.black),
                    borderRadius: BorderRadius.circular(4)),
                child: const Text(
                  'Back',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {},
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4)),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
