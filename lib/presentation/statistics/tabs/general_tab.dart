import 'package:flutter/material.dart';
import 'package:wapp_statistics/presentation/statistics/widgets/general_card.dart';

class GeneralTab extends StatelessWidget {
  const GeneralTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [GeneralCard()],
          ),
        ),
      ),
    );
  }
}
