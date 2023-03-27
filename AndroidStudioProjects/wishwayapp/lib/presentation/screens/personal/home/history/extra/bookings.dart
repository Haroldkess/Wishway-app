import 'package:flutter/material.dart';
import 'package:wishwayapp/presentation/model/ui_model.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/extra/booking_card.dart';

class Bookings extends StatelessWidget {
  const Bookings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookingItems.length,
      itemBuilder: (context, index) {
        BookingItems item = bookingItems[index];
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
