import 'package:arya_go_user/models/cars_model.dart';
import 'package:arya_go_user/screens/estimated_fare.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class TermsConditions extends StatefulWidget {
  CarsData carinfo;
  TermsConditions({super.key, required this.carinfo});

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: 20, vertical: size.height * 0.05),
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45, width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.carinfo.carType}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '${widget.carinfo.carDesc}',
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black38),
                      ),
                      const Text(
                        'Max Seat- 4 Luggage- 50KG',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black38),
                      ),
                    ],
                  ),
                  SizedBox(
                      height: size.height * 0.07,
                      width: size.width * 0.25,
                      child: Image.asset(
                        '${widget.carinfo.carImage}',
                        fit: BoxFit.fitWidth,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Estimated Fare',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '4123.00',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'About 87km, 1:30 hour',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Estimated fares will change as \ntime or distance inctreases during travel',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.2),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200]),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Fare Table',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              'Dropping',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'Local ride',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              'Up to 100 km',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Base Fare',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '75.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Per KM Ride Charge',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '(fuel and maintenance include)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              '18.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Time Charge Per Hr',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '(Cab rent)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              '60.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Night Charge',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '50.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const DottedLine(
                    dashLength: 3,
                    dashGapLength: 3,
                    lineThickness: 1,
                    dashColor: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 10, top: 10),
                    child: Column(
                      children: const [
                        Text(
                            '5% GST is payable in addition to ride fare.\nToll tax & parking charges payable in addition to ride fare.'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'After the scheduled ride is confirmed, ride cancellation charge of rs 250 and rs 500 will be levied for local and outstation ride respectively.'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'The customer will be responsible for the fooding of the driver during the outstation ride.')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: size.height * 0.151,
              width: size.width,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.black),
              child: Image.asset(
                'assets/images/aryago_banner.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const EstimatedFare())));
        },
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          height: size.height * 0.055,
          width: size.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(4)),
          child: const Text(
            'DONE',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
