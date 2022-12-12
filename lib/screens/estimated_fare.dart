import 'package:arya_go_user/bottom_sheets/book_ride.dart';
import 'package:arya_go_user/bottom_sheets/book_tour.dart';
import 'package:arya_go_user/estimated%20Fare/t&c_page.dart';
import 'package:arya_go_user/models/cars_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../profiles/profile_page.dart';

class EstimatedFare extends StatefulWidget {
  const EstimatedFare({super.key});

  @override
  State<EstimatedFare> createState() => _EstimatedFareState();
}

class _EstimatedFareState extends State<EstimatedFare> {
  bool isdropping = true;
  bool istrip = false;
  bool isrental = false;
  List<CarsData> cars = carslist;
  List<CarsData> normalCars = [];
  List<CarsData> specialCars = [];
  List<bool> onselect = [];
  bool onpackge = false;
  bool isstaus = false;
  bool isactive = false;
  var indexvalue;

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
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Estimated Fare',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Text(
              'Distance 30KM, Time 3:30hr',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: size.height * 0.12,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isdropping = true;
                      isrental = false;
                      istrip = false;
                    });
                  },
                  child: Container(
                    height: size.height * 0.04,
                    width: size.width * 0.28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: isdropping == true
                            ? Colors.black
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(width: 0.5)),
                    child: Text(
                      'Dropping',
                      style: TextStyle(
                          fontSize: 18,
                          color:
                              isdropping == true ? Colors.white : Colors.black),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isdropping = false;
                      isrental = false;
                      istrip = true;
                    });
                  },
                  child: Container(
                    height: size.height * 0.04,
                    width: size.width * 0.28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color:
                            istrip == true ? Colors.black : Colors.transparent,
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(width: 0.5)),
                    child: Text(
                      'Round Trip',
                      style: TextStyle(
                          fontSize: 18,
                          color: istrip == true ? Colors.white : Colors.black),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isdropping = false;
                      isrental = true;
                      istrip = false;
                    });
                  },
                  child: Container(
                    height: size.height * 0.04,
                    width: size.width * 0.28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: isrental == true
                            ? Colors.black
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(width: 0.5)),
                    child: Text(
                      'Rental',
                      style: TextStyle(
                          fontSize: 18,
                          color:
                              isrental == true ? Colors.white : Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: (isdropping == true)
              ? Column(
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
                                      onselect.replaceRange(
                                          0, normalCars.length, [
                                        for (int i = 0;
                                            i < onselect.length;
                                            i++)
                                          false
                                      ]);
                                      setState(() {
                                        onselect[index] = true;
                                        indexvalue = onselect.indexWhere(
                                            (element) => element == true);
                                        if (normalCars[index].status == false) {
                                          isstaus = true;
                                        } else {
                                          isstaus = false;
                                        }
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                (normalCars[index].newadded ==
                                                        true)
                                                    ? Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                          height: 12,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 5),
                                                          alignment:
                                                              Alignment.center,
                                                          width:
                                                              size.width * 0.1,
                                                          color: Colors.red,
                                                          child: const Text(
                                                            'NEW',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
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
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    '${normalCars[index].carDesc}',
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.black38),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    '${normalCars[index].availbleTime}',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          cars[index].status ==
                                                                  true
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
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(
                                                    height:
                                                        size.height * 0.018),
                                                onselect[index]
                                                    ? GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      ((context) =>
                                                                          TermsConditions(
                                                                            carinfo:
                                                                                normalCars[index],
                                                                          ))));
                                                        },
                                                        child: Container(
                                                          height: 20,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 5),
                                                          alignment:
                                                              Alignment.center,
                                                          width:
                                                              size.width * 0.15,
                                                          decoration: BoxDecoration(
                                                              color: const Color(
                                                                  0xffffea5b),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                          child: const Text(
                                                            'Read T&C',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
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
                    const Divider(thickness: 1, color: Colors.black12),
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
                                    onpackge = !onpackge;
                                    print(indexvalue);
                                    indexvalue == null || indexvalue == 'null'
                                        ? null
                                        : onselect[indexvalue] = false;
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
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 5, bottom: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                            (specialCars[index].newadded ==
                                                    true)
                                                ? Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                      height: 12,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 5),
                                                      alignment:
                                                          Alignment.center,
                                                      width: size.width * 0.1,
                                                      color: Colors.red,
                                                      child: const Text(
                                                        'NEW',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
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
                                                  color:
                                                      cars[index].status == true
                                                          ? Colors.green
                                                          : Colors.red,
                                                ),
                                              )
                                            ],
                                          ),
                                        ]),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '${specialCars[index].price}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                                height: size.height * 0.018),
                                            onpackge
                                                ? GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  ((context) =>
                                                                      TermsConditions(
                                                                        carinfo:
                                                                            normalCars[index],
                                                                      ))));
                                                    },
                                                    child: Container(
                                                      height: 20,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 5),
                                                      alignment:
                                                          Alignment.center,
                                                      width: size.width * 0.15,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xffffea5b),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4)),
                                                      child: const Text(
                                                        'Read T&C',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
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
                )
              : (istrip == true)
                  ? Column(
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
                                            onselect.replaceRange(
                                                0, normalCars.length, [
                                              for (int i = 0;
                                                  i < onselect.length;
                                                  i++)
                                                false
                                            ]);
                                            setState(() {
                                              onselect[index] = true;
                                              indexvalue = onselect.indexWhere(
                                                  (element) => element == true);
                                              if (normalCars[index].status ==
                                                  false) {
                                                isstaus = true;
                                              } else {
                                                isstaus = false;
                                              }
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
                                                  ? Colors.grey
                                                      .withOpacity(0.28)
                                                  : Colors.transparent,
                                              padding: const EdgeInsets.only(
                                                  right: 10, top: 5, bottom: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    Stack(children: [
                                                      SizedBox(
                                                          height: size.height *
                                                              0.07,
                                                          width:
                                                              size.width * 0.25,
                                                          child: Image.asset(
                                                            '${normalCars[index].carImage}',
                                                            fit:
                                                                BoxFit.fitWidth,
                                                          )),
                                                      (normalCars[index]
                                                                  .newadded ==
                                                              true)
                                                          ? Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Container(
                                                                height: 12,
                                                                margin:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            5),
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width:
                                                                    size.width *
                                                                        0.1,
                                                                color:
                                                                    Colors.red,
                                                                child:
                                                                    const Text(
                                                                  'NEW',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          10,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                                ),
                                                              ),
                                                            )
                                                          : const SizedBox()
                                                    ]),
                                                    const SizedBox(width: 10),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          '${normalCars[index].carType}',
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                        Text(
                                                          '${normalCars[index].carDesc}',
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  color: Colors
                                                                      .black38),
                                                        ),
                                                        const SizedBox(
                                                            height: 5),
                                                        Text(
                                                          '${normalCars[index].availbleTime}',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color: cars[index]
                                                                        .status ==
                                                                    true
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
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      SizedBox(
                                                          height: size.height *
                                                              0.018),
                                                      onselect[index]
                                                          ? GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder: ((context) =>
                                                                            TermsConditions(
                                                                              carinfo: normalCars[index],
                                                                            ))));
                                                              },
                                                              child: Container(
                                                                height: 20,
                                                                margin:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            5),
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width:
                                                                    size.width *
                                                                        0.15,
                                                                decoration: BoxDecoration(
                                                                    color: const Color(
                                                                        0xffffea5b),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4)),
                                                                child:
                                                                    const Text(
                                                                  'Read T&C',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          10,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300),
                                                                ),
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
                          const Divider(thickness: 1, color: Colors.black12),
                          SizedBox(height: size.height * 0.008),
                          Container(
                            height: size.height * 0.16,
                            width: size.width,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black),
                            child: Image.asset(
                              'assets/images/aryago_banner.jpeg',
                              fit: BoxFit.fill,
                            ),
                          )
                        ])
                  : Column(
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
                                            onselect.replaceRange(
                                                0, normalCars.length, [
                                              for (int i = 0;
                                                  i < onselect.length;
                                                  i++)
                                                false
                                            ]);
                                            setState(() {
                                              onselect[index] = true;
                                              indexvalue = onselect.indexWhere(
                                                  (element) => element == true);
                                              if (normalCars[index].status ==
                                                  false) {
                                                isstaus = true;
                                              } else {
                                                isstaus = false;
                                              }
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
                                                  ? Colors.grey
                                                      .withOpacity(0.28)
                                                  : Colors.transparent,
                                              padding: const EdgeInsets.only(
                                                  right: 10, top: 5, bottom: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    Stack(children: [
                                                      SizedBox(
                                                          height: size.height *
                                                              0.07,
                                                          width:
                                                              size.width * 0.25,
                                                          child: Image.asset(
                                                            '${normalCars[index].carImage}',
                                                            fit:
                                                                BoxFit.fitWidth,
                                                          )),
                                                      (normalCars[index]
                                                                  .newadded ==
                                                              true)
                                                          ? Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Container(
                                                                height: 12,
                                                                margin:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            5),
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width:
                                                                    size.width *
                                                                        0.1,
                                                                color:
                                                                    Colors.red,
                                                                child:
                                                                    const Text(
                                                                  'NEW',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          10,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                                ),
                                                              ),
                                                            )
                                                          : const SizedBox()
                                                    ]),
                                                    const SizedBox(width: 10),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          '${normalCars[index].carType}',
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                        Text(
                                                          '${normalCars[index].carDesc}',
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  color: Colors
                                                                      .black38),
                                                        ),
                                                        const SizedBox(
                                                            height: 5),
                                                        Text(
                                                          '${normalCars[index].availbleTime}',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color: cars[index]
                                                                        .status ==
                                                                    true
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
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      SizedBox(
                                                          height: size.height *
                                                              0.018),
                                                      onselect[index]
                                                          ? GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder: ((context) =>
                                                                            TermsConditions(
                                                                              carinfo: normalCars[index],
                                                                            ))));
                                                              },
                                                              child: Container(
                                                                height: 20,
                                                                margin:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            5),
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width:
                                                                    size.width *
                                                                        0.15,
                                                                decoration: BoxDecoration(
                                                                    color: const Color(
                                                                        0xffffea5b),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4)),
                                                                child:
                                                                    const Text(
                                                                  'Read T&C',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          10,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300),
                                                                ),
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
                          const Divider(thickness: 1, color: Colors.black12),
                          SizedBox(height: size.height * 0.008),
                          Container(
                            height: size.height * 0.16,
                            width: size.width,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black),
                            child: Image.asset(
                              'assets/images/aryago_banner.jpeg',
                              fit: BoxFit.fill,
                            ),
                          )
                        ])),
      bottomNavigationBar: onselect.any((element) => true) || onpackge
          ? BottomAppBar(
              elevation: 10,
              notchMargin: 5,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                    mainAxisAlignment: isstaus
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              builder: ((context) {
                                return const BookTour();
                              }));
                        },
                        child: Container(
                          height: size.height * 0.05,
                          width: size.width * 0.4,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Text(
                            'SCHEDULE',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ),
                      if (isstaus == true)
                        SizedBox()
                      else
                        GestureDetector(
                          onTap: () async {
                            showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                builder: ((context) {
                                  return const BookRide();
                                }));
                          },
                          child: Container(
                            height: size.height * 0.05,
                            width: size.width * 0.4,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(4)),
                            child: const Text(
                              'BOOK NOW',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        )
                    ]),
              ),
            )
          : normalCars[1].status == true
              ? Text('data')
              : null,
    );
  }
}
