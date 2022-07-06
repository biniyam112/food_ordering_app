import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/components.dart';
import '../../mock_data.dart';
import '../../theme/theme.dart';
import 'components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  'Delivery to:',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kActiveColor),
                ),
                const Text(
                  'San-fransisco',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Filter',
                  style: TextStyle(
                    color: Color.fromARGB(255, 11, 58, 138),
                  ),
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.all(12.sm),
            sliver: const SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(12.sm),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: 'Featured partners',
                onPress: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                ...List.generate(
                  demoMediumCardData.length,
                  (index) => RestaurantInfoMediumCard(
                    restaurantData: demoMediumCardData[index],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
