class PackageData {
  String? packageName, packageId, packageImage;
  double? price;

  PackageData(
      {this.packageId, this.packageImage, this.packageName, this.price});
}

List<PackageData> packageslist = [
  PackageData(
      packageId: 'ARYA1234',
      packageName: 'Rajgir Darshan',
      price: 3599.00,
      packageImage: ''),
  PackageData(
      packageId: 'ARYA1235',
      packageName: 'Dewghar Tour',
      price: 3899.00,
      packageImage: '')
];
