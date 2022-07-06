import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/components.dart';
import '../../../theme/theme.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    Key? key,
    required this.restaurantData,
  }) : super(key: key);
  final Map<String, dynamic> restaurantData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: InkWell(
        splashColor: Colors.black38,
        borderRadius: BorderRadius.circular(12.sm),
        onTap: () => () {},
        child: SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.sm),
                  child: Image.asset(
                    restaurantData['image'],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurantData['name'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      restaurantData['location'],
                      style: const TextStyle(
                        color: kBodyTextColor,
                      ),
                    ),
                    verticalSpacing(6),
                    DefaultTextStyle(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.sp),
                              color: kActiveColor,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.sp,
                              vertical: 1.sm,
                            ),
                            child: Text(
                              restaurantData['rating'],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    letterSpacing: 1.1,
                                  ),
                            ),
                          ),
                          Text(
                            '${restaurantData['delivertTime']} mins',
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          CircleAvatar(
                            radius: 2.sm,
                            backgroundColor: Colors.black54,
                          ),
                          Text(
                            restaurantData['cost'],
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
