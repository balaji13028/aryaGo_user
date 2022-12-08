import 'package:arya_go_user/models/rides_model.dart';
import 'package:arya_go_user/past_rides/ride_details.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PastRides extends StatelessWidget {
  PastRides({super.key});

  List<RidesData> rides = pastRides;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Your Past Rides',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) {
              return const MySeparator();
            },
            padding: const EdgeInsets.only(top: 15),
            itemCount: rides.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              RideDetails(rideInfo: rides[index]))));
                },
                child: Container(
                  height: size.height * 0.14,
                  width: size.width,
                  color: Colors.grey.withOpacity(0.08),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${rides[index].day}, ${rides[index].date}, ${rides[index].time}',
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          (rides[index].status == true)
                              ? Text(
                                  '${rides[index].price}0',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )
                              : const Text(
                                  'Cancel',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red),
                                ),
                        ],
                      ),
                      Text(
                        'Trip id ${rides[index].tripId}',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.68)),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            margin: const EdgeInsets.only(top: 15, bottom: 10),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.6),
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
                          const SizedBox(width: 10),
                          Text(
                            '${rides[index].pickup}',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          ),
                        ],
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
                          const SizedBox(width: 10),
                          Text(
                            '${rides[index].droping}',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ))
        ],
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
