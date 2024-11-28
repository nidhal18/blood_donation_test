import 'package:blood_donation_test/donor_details_screen.dart';
import 'package:blood_donation_test/receiver_details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blood Donation App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DonorDetailsScreen()),
                );
              },
              child: const Text('View Donor Details'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReceiverDetailsScreen()),
                  );
                },
                child: const Text('View Receiver Details'),
            ),
          ],
        ),
      ),
    );
  }
}
