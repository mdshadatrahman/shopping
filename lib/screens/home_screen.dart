import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/screens/product_details.dart';
import 'package:shopping/utils/color_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool inStock = true;
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            SizedBox(height: height * 0.07),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                height: height * 0.06,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width * 0.8,
                      child: TextFormField(
                        style: TextStyle(
                          color: AppColors.searchTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //Implement functionality
                      },
                      child: SvgPicture.asset('assets/icons/search_icon.svg'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.035),
            SizedBox(
              height: height - 155,
              width: width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: width * 0.05,
                    mainAxisSpacing: height * 0.07,
                    childAspectRatio: (3 / 4.5),
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: height * 0.4,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),

                      //Product List
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => ProductDetails(),
                                    ),
                                  );
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: height * 0.015),
                                    SizedBox(
                                      height: height * 0.15,
                                      width: 87,
                                      child: Image.asset(
                                        'assets/images/potato_chips.png',
                                      ),
                                    ),
                                    SizedBox(height: height * 0.005),
                                    const Text(
                                      'লেস ক্লাসিক ফ্যামিলি সাইজ চিপস্ চিপস্',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'ক্রয়',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(width: width * 0.03),
                                            Text(
                                              '৳20.00',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20,
                                                color: AppColors.purpleText,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '৳22.00',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            color: AppColors.purpleText,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.005),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'বিক্রয়',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(width: width * 0.01),
                                            Text(
                                              '৳25.00',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: AppColors.priceTextColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'লাভ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(width: width * 0.01),
                                            Text(
                                              '5.00',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                color: AppColors.priceTextColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          inStock
                              ? itemCount == 0
                                  ? Positioned(
                                      left: width * 0.12,
                                      top: height * 0.308,
                                      child: SizedBox(
                                        height: height * 0.05,
                                        width: width * 0.2,
                                        child: Center(
                                          child: FloatingActionButton(
                                            onPressed: () {
                                              setState(() {
                                                itemCount++;
                                              });
                                            },
                                            child: const Icon(Icons.add),
                                            backgroundColor: AppColors
                                                .circleButtonColorBlue1,
                                          ),
                                        ),
                                      ),
                                    )
                                  : Positioned(
                                      left: width * 0.03,
                                      top: height * 0.308,
                                      child: Container(
                                        height: height * 0.05,
                                        // width: width * 0.38,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          color: AppColors.errorRed
                                              .withOpacity(0.5),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: height * 0.04,
                                              child: FloatingActionButton(
                                                backgroundColor: AppColors
                                                    .circleButtonColorPink1,
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
                                                backgroundColor: AppColors
                                                    .circleButtonColorBlue1,
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
                                    )
                              : Positioned(
                                  left: width * 0.2,
                                  top: height * 0.002,
                                  child: Container(
                                    height: height * 0.03,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          AppColors.errorRed.withOpacity(0.5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'স্টকে নেই',
                                        style: TextStyle(
                                          color: AppColors.errorRedText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
