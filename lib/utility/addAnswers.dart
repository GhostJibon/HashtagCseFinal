import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAnswer extends StatelessWidget {
  AddAnswer(this.profilepic);
  final String profilepic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 10.w),
      child: Row(
        children: [
          Container(
            height: 35.h,
            width: 35.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
              image: DecorationImage(
                image: AssetImage(profilepic),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40.h,
                  width: 210.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDDDDDD),
                      hintText: 'Write a answer...',
                      hintStyle: TextStyle(
                          color: Color(0xff999999),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp),
                      contentPadding: EdgeInsets.only(left: 14.0, right: 10.w),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 39.5.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    color: Color(0xffDDDDDD),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt,
                          size: 21.w,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Icon(
                          Icons.emoji_emotions,
                          size: 21.w,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
