import 'package:arya_go_user/models/user_details_model.dart';
import 'package:arya_go_user/profiles/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  UserProfileData user = userlist;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'My Profile',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: size.height * 0.06,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: size.height * 0.058,
                        child: ClipOval(
                            child: SvgPicture.asset(
                                'assets/images/profile_img.svg')),
                      ),
                    ),
                    const Positioned(
                        child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                    ))
                  ],
                ),
              ],
            ),
            SizedBox(height: size.height * 0.07),
            Container(
              height: size.height * 0.26,
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 0.5, color: Colors.black38)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                          Text(
                            '${user.name}',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.black),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => EditProfile(
                                        text: user.name ?? '',
                                        type: "Name",
                                      ))));
                        },
                        child: const Icon(
                          Icons.edit_rounded,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Divider(thickness: 1),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'mobile Number',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                          Text(
                            '${user.mobileNumber}',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Divider(thickness: 1),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email (Optional)',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                          Text(
                            '${user.email}',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.black),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => EditProfile(
                                      text: user.email ?? '', type: 'Email'))));
                        },
                        child: const Icon(
                          Icons.edit_rounded,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.2),
            Container(
              height: size.height * 0.055,
              width: size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 0.8, color: Colors.black38)),
              child: const Text(
                'SIGN OUT',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            const Text(
              'Version 2.3',
              style: TextStyle(fontSize: 12, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
