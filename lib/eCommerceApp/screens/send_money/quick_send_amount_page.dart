import 'package:examples_hub/constants.dart';
import 'package:examples_hub/eCommerceApp/screens/request_money/receive_page.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models.dart';

class QuickSendAmountPage extends StatelessWidget {
  final User user;

  // ignore: use_key_in_widget_constructors
  const QuickSendAmountPage(this.user);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Widget payNow = InkWell(
      onTap: () {},
      child: Container(
        height: 80,
        width: width / 1.5,
        // width: width / 1.5,
        decoration: BoxDecoration(
            gradient: mainButton,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.16),
                offset: Offset(0, 5),
                blurRadius: 10.0,
              )
            ],
            borderRadius: BorderRadius.circular(9.0)),
        child: const Center(
          child: Text("Pay Now",
              style: TextStyle(
                  color: Color(0xfffefefe),
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0)),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset(img1),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ReceivePaymentPage(user)));
              },
            )
          ],
          backgroundColor: Colors.transparent,
          title: const Text(
            'Send Amount',
            style: TextStyle(color: darkGrey),
          ),
          elevation: 0,
        ),
        body: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height / 2.3,
                              padding: const EdgeInsets.all(16.0),
                              width: double.infinity,
                              color: yellow,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        CircleAvatar(
                                          maxRadius: 24,
                                          backgroundImage: NetworkImage(
                                              user.picture!.thumbnail!),
                                        ),
                                        const SizedBox(width: 16.0),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              user.name!.first! +
                                                  ' ' +
                                                  user.name!.last!,
                                              style: const TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(user.phone!,
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white30)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const Text('Enter Amount You want to Request',
                                      style: TextStyle(color: Colors.white)),
                                  SizedBox(
                                      width: 250,
                                      child: Theme(
                                        data: ThemeData(
                                            primaryColor: Colors.white,
                                            fontFamily: 'Montserrat'),
                                        child: const TextField(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 48),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            hintText: '\$ 00.00',
                                            hintStyle: TextStyle(
                                                color: Colors.white30,
                                                fontSize: 48),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )),
                                  const Text('You can only send \$54.24',
                                      style: TextStyle(color: Colors.white54)),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Text('Quick Pay'),
                            ),
                            Flexible(
                                child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Image.asset(img1),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Image.asset(img1),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Image.asset(img1),
                                ),
                              ],
                            )),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Expanded(child: payNow),
                                ],
                              ),
                            )
                          ],
                        ))))));
  }
}
