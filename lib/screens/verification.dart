import 'package:flutter/material.dart';

class IdVerificationScreen extends StatefulWidget {
  const IdVerificationScreen({super.key});

  @override
  State<IdVerificationScreen> createState() => _IdVerificationScreenState();
}

class _IdVerificationScreenState extends State<IdVerificationScreen> {
  bool isVerificationMethodSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ID Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  isVerificationMethodSelected = true;
                });
              },
              icon: const Icon(Icons.upload_file),
              label: const Text('Upload ID Document'),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  isVerificationMethodSelected = true;
                });
              },
              icon: const Icon(Icons.camera_alt),
              label: const Text('Take Photo of ID'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Your data is encrypted and securely stored.',
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: isVerificationMethodSelected
                  ? () {
                      // Navigate to the next screen
                    }
                  : null,
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
