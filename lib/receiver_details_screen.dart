import 'package:flutter/material.dart';

class ReceiverDetailsScreen extends StatelessWidget {
  const ReceiverDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receiver Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/receiver.jpg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Receiver Name: Moideen',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Blood Type: O-',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            const Text(
              'Age: 35',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            const Text(
              'Contact: +9122334455',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Action to help the receiver (could be further implemented)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Request Sent to Donor')),
                );
              },
              child: const Text('Request Blood'),
            ),
          ],
        ),
      ),
    );
  }
}
