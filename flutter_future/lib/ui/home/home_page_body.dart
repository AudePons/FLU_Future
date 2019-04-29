import 'package:flutter/material.dart';
import '../../model/offers.dart';
import '../../ui/common/offers_summary.dart';


class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child:  Container(
        color:  Color.fromRGBO(75, 75, 75, 1),
        child:  CustomScrollView(
          slivers: <Widget>[
             SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              sliver:  SliverList(
                delegate:  SliverChildBuilderDelegate(
                  (context, index) =>  OfferSummary(offers[index]),
                  childCount: offers.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
