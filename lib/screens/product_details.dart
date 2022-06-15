import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/color_manager.dart';
import '../widgets/search_widget.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int itemCount = 0;

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
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: AppColors.nameTextColor),
          ),
          title: Text(
            'প্রোডাক্ট ডিটেইল',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.nameTextColor,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: SearchWidget(
                    width: width,
                    height: height,
                    hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন'),
              ),
              SizedBox(height: height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: height * 0.35,
                    width: width * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: AppColors.white,
                    ),
                  ),
                  Container(
                    height: height * 0.4,
                    width: width * 0.62,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.white,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/pringles.png'),
                        )),
                  ),
                  Container(
                    height: height * 0.35,
                    width: width * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              Padding(
                padding: EdgeInsets.only(left: width * 0.04),
                child: const Text(
                  'প্রিঞ্জেলস অনিওন চিপস ৪২ গ্রাম',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              Padding(
                padding: EdgeInsets.only(left: width * 0.04),
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'ব্রান্ডঃ ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'প্রিঞ্জেলস',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.02),
                    SvgPicture.asset('assets/icons/ellipse.svg'),
                    SizedBox(width: width * 0.02),
                    Row(
                      children: const [
                        Text(
                          'ডিস্ট্রিবিউটরঃ  ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'মোঃ মোবারাক হোসেন',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //details
              SizedBox(height: height * 0.025),

              Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 344,
                        height: 116,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05,
                                  vertical: height * 0.007),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'ক্রয়মূল্যঃ',
                                    style: TextStyle(
                                      color: AppColors.purpleText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    '৳ 220',
                                    style: TextStyle(
                                      color: AppColors.purpleText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05,
                                  vertical: height * 0.007),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'বিক্রয়মূল্যঃ',
                                    style: TextStyle(
                                      color: AppColors.nameTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '৳ 250',
                                    style: TextStyle(
                                      color: AppColors.nameTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.05,
                              ),
                              child: SvgPicture.asset(
                                  'assets/icons/dotted_line.svg'),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05,
                                  vertical: height * 0.01),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'লাভঃ',
                                    style: TextStyle(
                                      color: AppColors.nameTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '৳ 30',
                                    style: TextStyle(
                                      color: AppColors.nameTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  itemCount == 0
                      ? Positioned(
                          left: width * 0.4,
                          top: height * 0.11,
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    itemCount++;
                                  });
                                },
                                child: Image.asset('assets/images/polygon.png'),
                              ),
                              Positioned(
                                left: width * 0.055,
                                top: height * 0.03,
                                child: const Text(
                                  'এটি\nকিনুন',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : Positioned(
                          left: width * 0.31,
                          top: height * 0.038,
                          child: Column(
                            children: [
                              Container(
                                height: height * 0.05,
                                // width: width * 0.38,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: AppColors.errorRed.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: height * 0.04,
                                      child: FloatingActionButton(
                                        backgroundColor:
                                            AppColors.circleButtonColorPink1,
                                        onPressed: () {
                                          setState(() {
                                            itemCount--;
                                          });
                                        },
                                        child: const Icon(Icons.remove),
                                        elevation: 0,
                                      ),
                                    ),
                                    Text(
                                      '$itemCount পিস',
                                      style: TextStyle(
                                        color: AppColors.errorRedText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.04,
                                      child: FloatingActionButton(
                                        backgroundColor:
                                            AppColors.circleButtonColorBlue1,
                                        onPressed: () {
                                          setState(() {
                                            itemCount++;
                                          });
                                        },
                                        child: const Icon(Icons.add),
                                        elevation: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: height * 0.02),
                              Stack(
                                children: [
                                  Image.asset('assets/images/polygon.png'),
                                  Positioned(
                                    left: width * 0.07,
                                    top: height * 0.025,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/box.svg'),
                                        SizedBox(height: height * 0.01),
                                        const Text(
                                          'কার্ট',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: width * 0.13,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor:
                                          AppColors.addButtonBackground,
                                      child: Text(
                                        itemCount.toString(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: AppColors.purpleText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                ],
              ),

              //বিস্তারিত
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.03),
                child: Text(
                  'বিস্তারিত',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.nameTextColor,
                  ),
                ),
              ),

              Padding(
                padding:
                EdgeInsets.only(left: width * 0.04, top: height * 0.03, right: width * 0.04),
                child: Text(
                  'জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে।',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.nameTextColor,
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              SizedBox(height: height * 0.02),

            ],
          ),
        ),
      ),
    );
  }
}
