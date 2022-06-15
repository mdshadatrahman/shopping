import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/color_manager.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.width,
    required this.height,
    this.hintText = '',
  }) : super(key: key);

  final double width;
  final double height;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              decoration:  InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
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
    );
  }
}
