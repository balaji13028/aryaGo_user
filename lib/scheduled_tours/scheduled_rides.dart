import 'package:flutter/material.dart';

class ScheduleRides extends StatelessWidget {
  const ScheduleRides({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          'Schedule List',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          children: [
            Container(
              height: size.height * 0.525,
              width: size.width,
              decoration: BoxDecoration(
                  color: const Color(0xfff6f4f5),
                  borderRadius: BorderRadius.circular(6)),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          boldText('Schedule Id-15386'),
                          boldText('Cab Class'),
                          normalText('Mini Cab')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          boldText('Tue, May 25, 07:30PM'),
                          boldText('Ride Type'),
                          normalText('dropping'),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: size.height * 0.09,
                    width: size.width,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.3, color: Colors.black45),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.6),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 1, color: Colors.green),
                              ),
                              child: Container(
                                  decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              )),
                            ),
                            const SizedBox(width: 15),
                            const Text(
                              'Bangaon Saharsa Bihar',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 25, right: 20),
                          child: Divider(thickness: 0.3, color: Colors.black45),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.6),
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
                            const Text(
                              'Mahishi Saharsa Bihar',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Estimated Distance 30KM and Time 3.30hr',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Estimated Fare :',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '430.00',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'If there is a difference in the distance and time due to any reason during the journey, then the estimated fare will also charge.',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Status :',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: size.width * 0.25,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 5, 156, 10),
                                borderRadius: BorderRadius.circular(4)),
                            child: const Text(
                              'Confirm',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: size.width * 0.28,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(width: 0.5, color: Colors.black38),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Text(
                          'Cancel Ride',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Your booking request has been confirmed.\nYou will receive driver details one hour before your ride starts. Incase of cancellation after the booking confirmation Rs. 250 will be charged for local ride and Rs. 500 will be charged for Outstation ride.',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            const MySeparator()
          ],
        ),
      ),
    );
  }

  Widget normalText(String string) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Text(
        string,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }

  Widget boldText(String string) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Text(
        string,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashCount = (boxWidth / (2 * 3)).floor();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: List.generate(dashCount, (_) {
              return const SizedBox(
                width: 3,
                height: 0.5,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.black54),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
