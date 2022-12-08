import 'package:arya_go_user/models/user_details_model.dart';
import 'package:arya_go_user/profiles/profile_page.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  String type, text;
  EditProfile({super.key, required this.text, required this.type});

  final _formkey = GlobalKey<FormState>();
  String editData = '';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Form(
                    key: _formkey,
                    child: Container(
                      alignment: Alignment.center,
                      height: size.height * 0.06,
                      width: size.width,
                      child: TextFormField(
                        initialValue: text,
                        textAlignVertical: TextAlignVertical.center,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.black),
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          isCollapsed: false,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onChanged: (value) => editData = value,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
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
                            'CANCEL',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (type == 'Email') {
                            newUser.email = editData;
                            user.email = editData;
                          } else {
                            newUser.name = editData;
                            user.name = editData;
                          }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ProfileScreen())));
                        },
                        child: Container(
                          height: size.height * 0.05,
                          width: size.width * 0.4,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4)),
                          child: const Text(
                            'SAVE',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
