import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class BookCartShimmer extends StatelessWidget {
  const BookCartShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 12,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.black12,
            highlightColor: Colors.black26,
            child: Container(
              height: 55.0.h,
              width: 200.0.w,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            ),
          );
        });
  }
}

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.black12,
            highlightColor: Colors.black26,
            child: Container(
              width: 18.0.w,
              height: 7.0.h,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            ),
          );
        });
  }
}

class ImageSliderShimmer extends StatelessWidget {
  const ImageSliderShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black12,
      highlightColor: Colors.black26,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class CurrentSubcriptionShimmer extends StatelessWidget {
  const CurrentSubcriptionShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black12,
      highlightColor: Colors.black26,
      child: Container(
        height: 45.0.h,
        width: 100.0.w,
        margin: EdgeInsets.only(left: 3.0.w, right: 3.0.w),
        decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
