import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/Search_Page.dart';
import 'package:new_batic/view/screen/signin.dart';
import 'package:new_batic/view/widget/CustomeBottomNavBar.dart';

import '../widget/compoents/defaultFormField.dart';
import '../widget/compoents/deff_button.dart';
import '../widget/location_supported_widget.dart';

class SearchBarScreen extends StatelessWidget {
  SearchBarScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.05),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CustomeBottomNavBar(),
                            )),
                        child: SizedBox(
                          width: widthNHeight0(context, 1) * 0.07,
                          child: Image.asset('assets/images/close.png'),
                        ),
                      ),
                      TextFormFieldWidget(
                        passToggle: false,
                        passController: _controller,
                        labelText: '',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Search Area / location ";
                          } else {
                            return null;
                          }
                        },
                        str: "Search Area / location",
                        width: widthNHeight0(context, 1) * 0.75,
                        height: widthNHeight0(context, 0) * 0.07,
                        iconSufData: Icons.search,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: EdgeInsets.only(
                      top: widthNHeight0(context, 0) * 0.005,
                      left: widthNHeight0(context, 1) * 0.05),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          //here add ur code
                          print('Image tapped!');
                        },
                        child: SizedBox(
                          width: widthNHeight0(context, 1) * 0.06,
                          child: Image.network(
                            'https://static-00.iconduck.com/assets.00/recent-icon-512x505-rl8e45ef.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: widthNHeight0(context, 1) * 0.03,
                      ),
                      const Text(
                        'Recently Searched Location',
                        style: TextStyle(
                            color: Color(0xff263238),
                            fontFamily: 'Kadwa',
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: widthNHeight0(context, 0) * 0.04,
                ),
                const LocationSupportedWidget(
                  region: 'Amman',
                ),
                SizedBox(
                  height: widthNHeight0(context, 0) * 0.01,
                ),
                const Divider(),
                Padding(
                  padding:
                      EdgeInsets.only(left: widthNHeight0(context, 1) * 0.05),
                  child: const Text(
                    'Location Supported',
                    style: TextStyle(
                        color: Color(0xff263238),
                        fontFamily: 'Kadwa',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: widthNHeight0(context, 0) * 0.04,
                ),
                Row(
                  children: List.generate(3, (index) {
                    return const LocationSupportedWidget(
                      region: 'Amman',
                    );
                  }),
                )
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(bottom: widthNHeight0(context, 0) * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  defaultButton(
                    text: 'Rest',
                    width: widthNHeight0(context, 1) * 0.3,
                    borderRadius: 5,
                    background: Colors.white,
                    textColor: Colors.black,
                  ),
                  defaultButton(
                    
                    text: 'Done',
                    width: widthNHeight0(context, 1) * 0.6,
                    borderRadius: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
