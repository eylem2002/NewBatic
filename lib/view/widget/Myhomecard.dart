// ignore_for_file: use_super_parameters, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/core/class/sharedData.dart';
import 'package:new_batic/core/services/EnterSevices.dart';

class MyHomecard extends StatefulWidget {
  const MyHomecard({
    Key? key,
    this.width = 300,
    this.aspectRatio = 1.76,

    required this.product,
    required this.onPress,
    required this.onFavoriteChanged,
  }) : super(key: key);

  final double width, aspectRatio;
  final Product product;
  final VoidCallback onPress;
  final Function(bool isFavourite) onFavoriteChanged;

  @override
  // ignore: library_private_types_in_public_api
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<MyHomecard> {
     String userId="";
void onDeletePressed() async {
  print('Delete button pressed');

try {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final User? user = auth.currentUser;
  final uid = user?.uid;
  print(uid);

  QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
      .collection('House')
      .get();

  print('Number of documents: ${snapshot.size}');
int counter=0;
  for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
    List<dynamic>? dataList = doc['dataList'];
counter++;
  if(dataList != null ){
    String str=dataList[7].toString();

   
  int openingBraceIndex = str.indexOf("{");
  int closingBraceIndex = str.indexOf("}");

  // Extract the part between "{" and "}"
   userId = str.substring(openingBraceIndex + 1, closingBraceIndex).trim();

//  print('$counter + $userId');

  }

// print('%%%%%%%%%%%%%%%%$uid');

    if (dataList != null  && userId == 'userid: ${uid.toString()}') {
      await doc.reference.delete();
      print('Home deleted successfully');
    }
  }
} catch (e) {
  print('Error deleting home: $e');

}

}


  void onEditPressed() {
    print('Edit button pressed');
  }

  void onRequestPressed() {
    print('Request button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffF0F2F6),
          ),
          padding: EdgeInsets.all(12),
          width: widthNHeight0(context, 1) * 0.9,
          child: GestureDetector(
            onTap: widget.onPress,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: widget.aspectRatio,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffCCD8F4).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                widget.product.images[0],
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              top: widthNHeight0(context, 0) * 0.01,
                              left: widthNHeight0(context, 1) * 0.02,
                              height: widthNHeight0(context, 1) * 0.084,
                              child: Container(
                                padding: EdgeInsets.all(
                                    widthNHeight0(context, 1) * 0.01),
                                decoration: BoxDecoration(
                                  color: Color(0xffF0F2F6),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  "checked",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Kadwa",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: widthNHeight0(context, 1) * 0.02,
                              right: widthNHeight0(context, 1) * 0.02,
                              child: ElevatedButton(
                                onPressed: onDeletePressed,
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ), backgroundColor: Color(0xffCCD8F4).withOpacity(0.35),
                                ),
                                child: Text(
                                  'Delete',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Kadwa",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: widthNHeight0(context, 1) * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " ${widget.product.price}JOD",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Kadwa",
                            color: Color(0xFF263238),
                          ),
                        ),
                        Text(
                          " ${widget.product.title}",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Kadwa",
                            color: Color(0xFF263238),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: onEditPressed,
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ), backgroundColor: Color(0xff6482C4),
                            ),
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Kadwa",
                              ),
                            ),
                          ),
                          SizedBox(width: widthNHeight0(context, 1) * 0.02),
                          ElevatedButton(
                            onPressed: onRequestPressed,
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ), backgroundColor: Color(0xff6482C4),
                            ),
                            child: Text(
                              'Request',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Kadwa",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: widthNHeight0(context, 1) * 0.03),
      ],
    );
  }
}
