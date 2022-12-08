class UserProfileData {
  String? id, name, email, image;
  int? mobileNumber;

  UserProfileData(
      {this.email, this.mobileNumber, this.name, this.image, this.id});
}

UserProfileData userlist = UserProfileData(
  id: '1',
  name: "Santosh Kumar Singh",
  mobileNumber: 7480098552,
  email: 'Santoshkr@gmail.com',
);

UserProfileData newUser = UserProfileData();
