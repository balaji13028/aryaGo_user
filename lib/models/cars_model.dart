class CarsData {
  double? id, price;
  String? carType, carDesc, availbleTime, carImage;
  bool? status, newadded, special;

  CarsData(
      {this.id,
      this.price,
      this.carType,
      this.carDesc,
      this.availbleTime,
      this.carImage,
      this.status,
      this.newadded,
      this.special});
}

List<CarsData> carslist = [
  CarsData(
    id: 1,
    carType: 'Mini Cab',
    carDesc: 'Spresso, Wegonr etc..',
    availbleTime: 'Available 18 Minute',
    price: 1858.60,
    carImage: 'assets/images/car_1.jpeg',
    status: true,
    newadded: false,
    special: false,
  ),
  CarsData(
    id: 1,
    carType: 'Sedan Cab',
    carDesc: 'Dzire, Xcent etc..',
    availbleTime: 'Currently not available',
    price: 1958.60,
    carImage: 'assets/images/car_2.png',
    status: false,
    newadded: false,
    special: false,
  ),
  CarsData(
    id: 1,
    carType: 'SUV Cab',
    carDesc: 'Ertiga, Scorpio etc..',
    availbleTime: 'Available 26 Minute',
    price: 2158.60,
    carImage: 'assets/images/car_3.webp',
    status: true,
    newadded: false,
    special: false,
  ),
  CarsData(
    id: 1,
    carType: 'Premium Cab',
    carDesc: 'verna, city etc..',
    availbleTime: 'Available 34 Minute',
    price: 2258.60,
    carImage: 'assets/images/car_4.png',
    status: true,
    newadded: true,
    special: false,
  ),
  CarsData(
    id: 1,
    carType: 'Special Package',
    carDesc: 'Bihar, Ride with AryaGo',
    availbleTime: 'Available 30 Minute',
    price: 1599.60,
    carImage: 'assets/images/car_5.webp',
    status: true,
    newadded: false,
    special: true,
  )
];
