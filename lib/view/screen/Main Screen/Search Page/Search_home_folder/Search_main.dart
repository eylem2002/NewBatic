// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:new_batic/core/class/type.dart';
import 'package:new_batic/view/screen/Main%20Screen/Search%20Page/Search_home_folder/body.dart';
import 'package:new_batic/view/screen/Main%20Screen/Search%20Page/Search_home_folder/header.dart';
import 'package:new_batic/core/services/EnterSevices.dart';

class Search_Main extends StatefulWidget {
  const Search_Main({super.key});

  @override
  State<Search_Main> createState() => _Search_MainState();
}
class _Search_MainState extends State<Search_Main> {

  @override
  Widget build(BuildContext context) {
        print('ttype: $ttype');
print('Area: $Area');
print('bednumber: $bednumber');
print('price_start: $price_start');
print('price_end: $price_end');
print('Age: $Age');
print('Furnfished: $Furnfished');
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text("Batic"),
        
           leading: Container(
            
          padding: const EdgeInsets.all(9),
          child: Center(
            child: CircleAvatar(
              
              backgroundColor: Colors.black,
              radius: 15,
              child: IconButton(
                onPressed: () {
                  
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
        )
        
      ),
      
      body: SingleChildScrollView(
        child: Column(
      
          children: [
            Divider(height: 1, color: Colors.grey[300]),
            const Header(),
            
            Container(
              
              height: widthNHeight0(context, 0)*0.020,
            ),
            const BodySearch(),
          ],
        ),
      ),
    );
  }
}