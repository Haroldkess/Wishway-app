import 'package:flutter/material.dart';
import 'package:wishwayapp/presentation/model/ui_model.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/extra/booking_card.dart';

class Delivered extends StatelessWidget {
  const Delivered({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: deloiveredHistory.length,
      itemBuilder: (context, index) {
        BookingItems item = deloiveredHistory[index];
        return  Padding(
          padding:const EdgeInsets.symmetric(vertical: 10),
          child: BookingCard(
            item: item,
          ),
        );
      },
    );
  }
}
