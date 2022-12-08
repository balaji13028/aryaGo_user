import 'package:arya_go_user/fare_table/fare_table.dart';
import 'package:arya_go_user/profiles/profile_page.dart';
import 'package:arya_go_user/scheduled_tours/scheduled_rides.dart';
import 'package:arya_go_user/tour_packages.dart/tour_pakage.dart';
import 'package:arya_go_user/wallet/aryago_wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../past_rides/past_rides.dart';

class SlideDrawer extends StatelessWidget {
  const SlideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width * 0.75,
      child: Column(
        children: [
          Container(
            height: size.height * 0.2,
            width: size.width,
            color: Colors.black,
            padding: EdgeInsets.only(left: 10, top: size.height * 0.035),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 38,
                    child: ClipOval(
                      child: SvgPicture.asset('assets/images/profile_img.svg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Santhosh Kumar Singh',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '7480098552',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            title: const Text('Your Past ride'),
            style: ListTileStyle.list,
            leading: const Icon(
              Icons.history,
              size: 38,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => PastRides())));
            },
          ),
          ListTile(
            title: const Text('Your Schedule ride'),
            style: ListTileStyle.list,
            leading: const Icon(
              Icons.schedule_outlined,
              size: 38,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const ScheduleRides())));
            },
          ),
          ListTile(
            title: const Text('Tour Package'),
            style: ListTileStyle.list,
            leading: const Icon(
              Icons.holiday_village_rounded,
              size: 38,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => TourPackage())));
            },
          ),
          ListTile(
            title: const Text('Fare Table'),
            style: ListTileStyle.list,
            leading: const Icon(Icons.payment_outlined, size: 38),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const FareTable())));
            },
          ),
          ListTile(
            title: const Text('Support'),
            style: ListTileStyle.list,
            leading: const Icon(
              Icons.support_agent,
              size: 38,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('About us'),
            style: ListTileStyle.list,
            leading: const Icon(Icons.person, size: 38),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            style: ListTileStyle.list,
            leading: const Icon(
              Icons.privacy_tip,
              size: 38,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Terms & Conditions'),
            style: ListTileStyle.list,
            leading: const Icon(Icons.note_alt, size: 38),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Profile Setting'),
            style: ListTileStyle.list,
            leading: const Icon(
              Icons.edit_note,
              size: 38,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ProfileScreen())));
            },
          ),
          ListTile(
            title: const Text('AryaGo Wallet'),
            style: ListTileStyle.list,
            leading: const Icon(Icons.wallet, size: 38),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const WalletScreen())));
            },
          ),
        ],
      ),
    );
  }
}
