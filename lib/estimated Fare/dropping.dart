import 'package:arya_go_user/models/cars_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DroppingPlan extends StatefulWidget {
  const DroppingPlan({super.key});

  @override
  State<DroppingPlan> createState() => _DroppingPlanState();
}

class _DroppingPlanState extends State<DroppingPlan> {
  List<CarsData> cars = carslist;
  List<CarsData> normalCars = [];
  List<CarsData> specialCars = [];
  List<bool> onselect = [];
  bool onpackge = false;

  @override
  void initState() {
    for (var car in cars) {
      if (car.special == true) {
        specialCars.add(car);
      } else {
        normalCars.add(car);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTileTheme.merge(
          dense: true,
          child: Column(
            children: [
              ListView.separated(
                separatorBuilder: (context, index) =>
                    SizedBox(height: size.height * 0.035),
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: normalCars.length,
                itemBuilder: (context, index) {
                  onselect.add(false);
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          onselect.replaceRange(0, normalCars.length, [
                            for (int i = 0; i < onselect.length; i++) false
                          ]);
                          setState(() {
                            onselect[index] = true;
                            onpackge = false;
                          });
                        },
                        child: DottedBorder(
                          dashPattern: const [2, 4],
                          color: Colors.black38,
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(4),
                          child: Container(
                            color: onselect[index]
                                ? Colors.grey.withOpacity(0.28)
                                : Colors.transparent,
                            padding: const EdgeInsets.only(
                                right: 10, top: 5, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Stack(children: [
                                    SizedBox(
                                        height: size.height * 0.07,
                                        width: size.width * 0.25,
                                        child: Image.asset(
                                          '${normalCars[index].carImage}',
                                          fit: BoxFit.fitWidth,
                                        )),
                                    (normalCars[index].newadded == true)
                                        ? Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              height: 12,
                                              margin: const EdgeInsets.only(
                                                  left: 5),
                                              alignment: Alignment.center,
                                              width: size.width * 0.1,
                                              color: Colors.red,
                                              child: const Text(
                                                'NEW',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          )
                                        : const SizedBox()
                                  ]),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${normalCars[index].carType}',
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        '${normalCars[index].carDesc}',
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black38),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '${normalCars[index].availbleTime}',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: cars[index].status == true
                                              ? Colors.green
                                              : Colors.red,
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                                Column(
                                  children: [
                                    Text(
                                      '${normalCars[index].price}',
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    SizedBox(height: size.height * 0.018),
                                    onselect[index]
                                        ? Container(
                                            height: 20,
                                            margin:
                                                const EdgeInsets.only(left: 5),
                                            alignment: Alignment.center,
                                            width: size.width * 0.15,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffffea5b),
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: const Text(
                                              'Read T&C',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        : SizedBox(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.015),
        const Divider(thickness: 1, color: Colors.black54),
        SizedBox(height: size.height * 0.008),
        Text(
          'Special Package',
          style: TextStyle(
              color: Colors.green[800],
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: size.height * 0.012),
        Expanded(
          //dense: true,
          child: ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: specialCars.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        onpackge = true;
                        for (var i = 0; i < onselect.length; i++) {
                          return onselect.add(false);
                        }
                      });
                    },
                    child: DottedBorder(
                      dashPattern: const [2, 4],
                      color: Colors.black38,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(4),
                      child: Container(
                        color: onpackge
                            ? Colors.grey.withOpacity(0.28)
                            : Colors.transparent,
                        padding:
                            const EdgeInsets.only(right: 10, top: 5, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Stack(children: [
                                SizedBox(
                                    height: size.height * 0.07,
                                    width: size.width * 0.25,
                                    child: Image.asset(
                                      '${specialCars[index].carImage}',
                                      fit: BoxFit.fitWidth,
                                    )),
                                (specialCars[index].newadded == true)
                                    ? Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          height: 12,
                                          margin:
                                              const EdgeInsets.only(left: 5),
                                          alignment: Alignment.center,
                                          width: size.width * 0.1,
                                          color: Colors.red,
                                          child: const Text(
                                            'NEW',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      )
                                    : const SizedBox()
                              ]),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${specialCars[index].carType}',
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    '${specialCars[index].carDesc}',
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black38),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '${specialCars[index].availbleTime}',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: cars[index].status == true
                                          ? Colors.green
                                          : Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '${specialCars[index].price}',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                SizedBox(height: size.height * 0.018),
                                onpackge
                                    ? Container(
                                        height: 20,
                                        margin: const EdgeInsets.only(left: 5),
                                        alignment: Alignment.center,
                                        width: size.width * 0.15,
                                        decoration: BoxDecoration(
                                            color: const Color(0xffffea5b),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: const Text(
                                          'Read T&C',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
