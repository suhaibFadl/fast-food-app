import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.logout, color: Colors.white)),
          // Gap(8),
        ],
        backgroundColor: theme.primaryColor,
        title: Text(
          'Account Settings',
          style: TextStyle(
              letterSpacing: 2,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .37,
            child: Column(
              children: [
                Gap(32),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 4.0,
                        spreadRadius: .50,
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                  ),
                  height: 200,
                  width: 200, // Ensure the container takes up the full width
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/items/classic-burger.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Username',
                  style:
                      GoogleFonts.poppins(fontSize: 24.0, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .46889,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset.zero,
                  blurRadius: 3,
                  spreadRadius: 1.0,
                  blurStyle: BlurStyle.normal,
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'Settings',
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Gap(8),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: theme.primaryColor,
                          ),
                          Gap(16),
                          Text(
                            'Edit Profile',
                            style: theme.textTheme.bodyLarge,
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios,
                              size: 20, color: theme.primaryColor),
                        ],
                      ),
                    ),
                  ),
                ),
                Gap(8),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit_location,
                            color: theme.primaryColor,
                          ),
                          Gap(16),
                          Text('Edit Location',
                              style: theme.textTheme.bodyLarge),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios,
                              size: 20, color: theme.primaryColor),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: theme.primaryColor,
                          ),
                          Gap(12),
                          Text('Log Out', style: theme.textTheme.bodyMedium),
                        ],
                      ),
                    ),
                  ),
                ),
                Gap(12),
              ],
            ),
          )
        ],
      ),
    );
  }
}
