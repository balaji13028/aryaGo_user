class RidesData {
  String? tripId, day, date, time, pickup, droping;
  bool? status;
  double? price;

  RidesData({
    this.tripId,
    this.day,
    this.date,
    this.time,
    this.price,
    this.pickup,
    this.droping,
    this.status,
  });
}

List<RidesData> pastRides = [
  RidesData(
    tripId: 'ARY129685',
    date: ' May 25',
    day: 'Tue',
    price: 443.00,
    time: '07:01PM',
    pickup: 'Bangaon est Saharsa bihar india',
    droping: 'Pc colony ward no 4 Patna Bihar india',
    status: true,
  ),
  RidesData(
    tripId: 'ARY129695',
    date: ' May 25',
    day: 'Tue',
    price: 443.00,
    time: '07:01PM',
    pickup: 'Bangaon est Saharsa bihar india',
    droping: 'Pc colony ward no 4 Patna Bihar india',
    status: false,
  ),
  RidesData(
    tripId: 'ARY129697',
    date: ' May 25',
    day: 'Tue',
    price: 230.00,
    time: '07:01PM',
    pickup: 'Bangaon est Saharsa bihar india',
    droping: 'Pc colony ward no 4 Patna Bihar india',
    status: true,
  )
];
