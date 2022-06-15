import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../widgets/search_widget.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: AppColors.nameTextColor),
          ),
          title:  Text(
            'প্রোডাক্ট ডিটেইল',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.nameTextColor,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: SearchWidget(width: width, height: height, hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন'),
            ),

            SizedBox(height: height * 0.05),
            Container(
              height: 308,
              width: 248,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.white,
              ),
            )
          ],

        ),
      ),
    );
  }
}
