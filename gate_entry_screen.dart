// Bharat Dairy — Gate Entry & Shift-wise Milk Management
import 'package:flutter/material.dart';

class GateEntryScreen extends StatelessWidget {
  final bool isHindi;
  const GateEntryScreen({super.key, required this.isHindi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isHindi ? 'गेट एंट्री एवं शिफ्ट' : 'Gate Entry & Shifts')),
      body: Center(child: Text(isHindi ? 'गेट एंट्री फॉर्म व सारांश' : 'Gate Entry Form & Shift Summary')),
    );
  }
}