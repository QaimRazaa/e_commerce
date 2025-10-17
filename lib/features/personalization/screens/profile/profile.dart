import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(image: AppImages.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Sizes.spaceBetweenItems / 2),
              Divider(),
              SizedBox(height: Sizes.spaceBetweenItems),
              SectionHeading(title: 'Profile Information'),
              SizedBox(height: Sizes.spaceBetweenItems),
              ProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Syed Qaim Raza',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'Qaim raza',
              ),
              SizedBox(height: Sizes.spaceBetweenItems),
              Divider(),
              SizedBox(height: Sizes.spaceBetweenItems),

              SectionHeading(title: 'Personal Information'),
              SizedBox(height: Sizes.spaceBetweenItems),
              ProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '123456',
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Email',
                value: 'qaimr320@gmail.com',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+92 301 12345678',
              ),
              ProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              ProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '8 May, 2004',
              ),
              SizedBox(height: Sizes.spaceBetweenItems),
              Divider(),
              SizedBox(height: Sizes.spaceBetweenItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
