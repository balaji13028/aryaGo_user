import 'package:arya_go_user/models/rides_model.dart';
import 'package:flutter/material.dart';

import '../constants/separator.dart';

// ignore: must_be_immutable
class InvoiceBill extends StatelessWidget {
  RidesData rideInfo;
  InvoiceBill({super.key, required this.rideInfo});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Invoice Details',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Text(
              'Booking ID ${rideInfo.tripId}',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.68)),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Total Fare',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          ' (Round of)',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '550.00',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const Divider(thickness: 0.5, color: Colors.black26),
                const SizedBox(height: 10),
                Text(
                  'Driver Invoice Id: DRIV1234568',
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(0.5)),
                ),
                Container(
                  height: size.height * 0.04,
                  width: size.width,
                  padding: const EdgeInsets.only(left: 10),
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  alignment: Alignment.centerLeft,
                  color: Colors.black.withOpacity(0.06),
                  child: const Text(
                    'Ride Fare Details',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        normalText('Ride Fare'),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 4, bottom: 4),
                          child: Row(
                            children: const [
                              Text(
                                'CGST ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '(2.5%)',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 4, bottom: 4),
                          child: Row(
                            children: const [
                              Text(
                                'SGST ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '(2.5%)',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        normalText('400.00'),
                        normalText('25.00'),
                        normalText('25.00')
                      ],
                    )
                  ],
                ),
                const MySeparator(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 4, bottom: 4),
                      child: Row(
                        children: const [
                          Text(
                            'Total ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '(Ride Fee)',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black45),
                          ),
                        ],
                      ),
                    ),
                    boldText('450.00')
                  ],
                ),
                const Divider(thickness: 0.5, color: Colors.black45),
                const SizedBox(height: 10),
                Text(
                  'Convenience Invoice Id: DRIV1234568',
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(0.5)),
                ),
                Container(
                  height: size.height * 0.04,
                  width: size.width,
                  padding: const EdgeInsets.only(left: 10),
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  alignment: Alignment.centerLeft,
                  color: Colors.black.withOpacity(0.06),
                  child: const Text(
                    'Convenience Fee Details',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        normalText('Convenience Fee'),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 4, bottom: 4),
                          child: Row(
                            children: const [
                              Text(
                                'CGST ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '(2.5%)',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 4, bottom: 4),
                          child: Row(
                            children: const [
                              Text(
                                'SGST ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '(2.5%)',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        normalText('80.00'),
                        normalText('10.00'),
                        normalText('10.00')
                      ],
                    )
                  ],
                ),
                const MySeparator(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 4, bottom: 4),
                      child: Row(
                        children: const [
                          Text(
                            'Total ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '(Convenience Fee)',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black45),
                          ),
                        ],
                      ),
                    ),
                    boldText('100.00')
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.055,
              width: size.width,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 0.5, color: Colors.black),
              ),
              child: const Text(
                'Download Invoice',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget normalText(String string) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Text(
        string,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

  Widget boldText(String string) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Text(
        string,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
