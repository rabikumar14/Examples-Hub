import 'package:examples_hub/constants.dart';
import 'package:examples_hub/eCommerceApp/screens/auth/welcome_back_page.dart';
import 'package:flutter/material.dart';

import '../../bg.dart';
import '../../constants.dart';
import 'change_country.dart';
import 'change_language_page.dart';
import 'change_password_page.dart';
import 'legal_about_page.dart';
import 'notifications_settings_page.dart';

// ignore: use_key_in_widget_constructors
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MainBackground(),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            'Settings',
            style: TextStyle(color: darkGrey),
          ),
          elevation: 0,
        ),
        body: SafeArea(
          bottom: true,
          child: LayoutBuilder(
              builder: (builder, constraints) => SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 24.0, left: 24.0, right: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                'General',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                            ListTile(
                              title: const Text('Language A / का'),
                              leading: Image.asset(img1),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => ChangeLanguagePage())),
                            ),
                            ListTile(
                              title: const Text('Change Country'),
                              leading: Image.asset(img1),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => ChangeCountryPage())),
                            ),
                            ListTile(
                              title: const Text('Notifications'),
                              leading: Image.asset(img1),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          NotificationSettingsPage())),
                            ),
                            ListTile(
                              title: const Text('Legal & About'),
                              leading: Image.asset(img1),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => LegalAboutPage())),
                            ),
                            ListTile(
                              title: const Text('About Us'),
                              leading: Image.asset(img1),
                              onTap: () {},
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                              child: Text(
                                'Account',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                            ListTile(
                              title: const Text('Change Password'),
                              leading: Image.asset(img1),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => ChangePasswordPage())),
                            ),
                            ListTile(
                              title: const Text('Sign out'),
                              leading: Image.asset(img1),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => const WelcomeBackPage())),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
