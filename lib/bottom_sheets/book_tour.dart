import 'package:arya_go_user/constants/separator.dart';
import 'package:arya_go_user/screens/home_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class BookTour extends StatefulWidget {
  const BookTour({super.key});

  @override
  State<BookTour> createState() => _BookTourState();
}

class _BookTourState extends State<BookTour> {
  String pickdate = '';
  bool onConfirm = false;
  @override
  void initState() {
    pickdate = DateFormat('EE d MMM, kk:mm').format(DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return (onConfirm == true)
        ? requestSubmitted(context)
        : Container(
            height: size.height * 0.55,
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Enter Your Pickup Location',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                Container(
                  height: size.height * 0.05,
                  width: size.width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 15),
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey.withOpacity(0.14),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        padding: const EdgeInsets.symmetric(horizontal: 2.6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(
                            width: 1,
                            color: const Color(0xff29d202),
                          ),
                        ),
                        child: Container(
                            decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff29d202),
                        )),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Bangaon Est Saharsa Bihar',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Date and Time',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                Text(
                  pickdate,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Container(
                  height: size.height * 0.18,
                  width: size.width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 15, bottom: 10),
                  child: CupertinoDatePicker(
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: (DateTime value) {
                      var data = DateFormat('EE d MMM, kk:mm').format(value);
                      setState(() {
                        pickdate = data.toString();
                      });
                    },
                    dateOrder: DatePickerDateOrder.dmy,
                    use24hFormat: true,
                    mode: CupertinoDatePickerMode.dateAndTime,
                    minimumYear: DateTime.december,
                    maximumYear: 2300,
                  ),
                ),
                DottedBorder(
                  color: Colors.black38,
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height * 0.045,
                    width: size.width,
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                          isCollapsed: true,
                          hintText: 'Any Notes',
                          hintStyle:
                              TextStyle(fontSize: 16, color: Colors.black26),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      onConfirm = true;
                    });
                  },
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(4)),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          );
  }

  Widget requestSubmitted(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.55,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[100],
            radius: size.width * 0.115,
            child: SvgPicture.asset(
              'assets/images/submitted_img.svg',
              width: size.width * 0.2,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Request Submitted',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          const Text(
            'Status- Processing',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black87),
          ),
          SizedBox(height: size.height * 0.025),
          const MySeparator(),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Your Booking request has been placed successfully. Our admin will process your booking request and update shortly.',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Thank you for choosing AryaGo Cab',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.12),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => HomeScreen())));
            },
            child: Container(
              height: size.height * 0.05,
              width: size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(4)),
              child: const Text(
                'BACK TO HOME',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
