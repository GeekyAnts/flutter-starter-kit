import 'package:app/src/screens/templates/profile/widgets/editable_tile.dart';
import 'package:app/src/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:app/src/utils/size_utils.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController bio = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController dob = TextEditingController();
    TextEditingController email = TextEditingController();

    bio.text = "Eat, sleep, create";
    phone.text = "9999945123";
    dob.text = "22/01/1995";
    email.text = "abcd@hotmail.com";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          'Edit Profile',
          style: Theme.of(context)
              .textTheme
              .headline2
              .copyWith(fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(
            25.toWidth, 60.toHeight, 25.toWidth, 20.toHeight),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.dstATop,
                    ),
                    child: Image.network(
                      'https://cultivatedculture.com/wp-content/uploads/2019/12/LinkedIn-Profile-Picture-Example-Tynan-Allan.jpeg',
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.edit,
                    ),
                  ),
                  top: 10,
                  right: 3,
                ),
              ],
            ),
            SizedBox(height: 50.toHeight),
            EditableTile(
              icon: Icons.public,
              text: bio,
            ),
            EditableTile(
              icon: Icons.phone,
              text: phone,
            ),
            EditableTile(
              icon: Icons.event,
              text: dob,
            ),
            EditableTile(
              icon: Icons.email,
              text: email,
            ),
            SizedBox(height: 30.toHeight),
            CustomButton(
              isSecondary: false,
              onTap: () {},
              text: "Update",
            ),
          ],
        ),
      ),
    );
  }
}
