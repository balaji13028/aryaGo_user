import 'package:arya_go_user/models/rides_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'invoive_billing.dart';

// ignore: must_be_immutable
class RideDetails extends StatelessWidget {
  RidesData rideInfo;
  RideDetails({super.key, required this.rideInfo});

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
            Text(
              '${rideInfo.day},${rideInfo.date}, ${rideInfo.time}',
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Text(
              'Trip id ${rideInfo.tripId}',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.68)),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: size.height * 0.1,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'BR01PB9078',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Dzire Tour',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.68)),
                        ),
                        Text(
                          'Santhosh Kumar',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.68)),
                        ),
                      ],
                    ),
                    Container(
                        height: size.height * 0.09,
                        width: size.width * 0.18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border:
                                Border.all(width: 1, color: Colors.black54)),
                        child: SvgPicture.asset(
                          'assets/images/profile_img.svg',
                          fit: BoxFit.fitHeight,
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Ride Details',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: size.width * 0.3,
                child: const Divider(thickness: 2, color: Colors.black),
              ),
              Container(
                height: size.height * 0.048,
                width: size.width,
                margin: const EdgeInsets.only(top: 5),
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 0.5, color: Colors.black45),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      padding: const EdgeInsets.symmetric(horizontal: 2.6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(width: 1, color: Colors.green),
                      ),
                      child: Container(
                          decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      )),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      '${rideInfo.pickup}',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.048,
                width: size.width,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 0.5, color: Colors.black45),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      padding: const EdgeInsets.symmetric(horizontal: 2.6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(width: 1, color: Colors.red),
                      ),
                      child: Container(
                          decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      )),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      '${rideInfo.droping}',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      normalText('Ride Type'),
                      normalText('Cab Type'),
                      normalText('Distance'),
                      normalText('Ride Time'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      normalText('Dropping'),
                      normalText('Mini Cab'),
                      normalText('10KM'),
                      normalText('0.30hr'),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Fare Details',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: size.width * 0.3,
                child: const Divider(thickness: 2, color: Colors.black),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      normalText('Base Fare'),
                      normalText('Km Fare'),
                      normalText('Minute Fare'),
                      normalText('Night Charge'),
                      boldText('Ride Fare'),
                      normalText('Takes'),
                      boldText('Total Fare'),
                      normalText('Toll/Parking Charge'),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: const [
                            Text(
                              'Wallet ',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '(Advance/Back Duse/ Discount)',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      normalText('300.00'),
                      normalText('200.00'),
                      normalText('100.00'),
                      normalText('00.00'),
                      boldText('600.00'),
                      normalText('50.00'),
                      boldText('650.00'),
                      normalText('00.00'),
                      normalText('100.00'),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 20, bottom: 10),
                    child: Text(
                      "Total Payout",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 20, bottom: 10),
                    child: Text(
                      "550.00",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const Divider(thickness: 1, color: Colors.black),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    InvoiceBill(rideInfo: rideInfo))));
                      },
                      child:
                          outlineButtons(size, 'Invoice', size.width * 0.25)),
                  outlineButtons(size, 'Support', size.width * 0.25),
                  outlineButtons(size, 'Feedback', size.width * 0.25)
                ],
              ),
              SizedBox(height: size.height * 0.06)
            ],
          ),
        ),
      ),
    );
  }

  Widget normalText(String string) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
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
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
      child: Text(
        string,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget outlineButtons(size, String text, width) {
    return Container(
      height: size.height * 0.042,
      width: width,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 0.5, color: Colors.black),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
