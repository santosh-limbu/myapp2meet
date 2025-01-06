// lib/screens/sign_up_screen.dart

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/models/sign_up_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _signUpForm = SignUpForm();
  int _currentStep = 0;

  // List of interests for users to choose from
  final List<String> _availableInterests = [
    '📖 Reading',
    '✈️ Travel',
    '🎵 Music',
    '⚽ Sports',
    '🍳 Cooking',
    '🎨 Art',
    '📸 Photography',
    '🎬 Movies',
    '💃 Dancing',
    '🥾 Hiking',
    '🎮 Gaming',
    '🧘 Yoga',
    '🍕 Food',
    '👗 Fashion',
    '💻 Technology'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Purple header with logo
            Container(
              color: const Color(0xFF7C3AED),
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  'BlindDate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Stepper content
            Expanded(
              child: Stepper(
                currentStep: _currentStep,
                onStepContinue: () {
                  if (_currentStep < 3) {
                    setState(() => _currentStep++);
                  }
                },
                onStepCancel: () {
                  if (_currentStep > 0) {
                    setState(() => _currentStep--);
                  }
                },
                steps: [
                  _buildBasicInfoStep(),
                  _buildPersonalDetailsStep(),
                  _buildInterestsStep(),
                  // _buildSecurityStep(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Step _buildBasicInfoStep() {
    return Step(
      title: const Text('Basic Information'),
      content: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'First Name',
              hintText: 'Enter your first name',
            ),
            onChanged: (value) => _signUpForm.firstName = value,
            validator: (value) =>
                value?.isEmpty ?? true ? 'First name is required' : null,
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Last Name',
              hintText: 'Enter your last name',
            ),
            onChanged: (value) => _signUpForm.lastName = value,
            validator: (value) =>
                value?.isEmpty ?? true ? 'Last name is required' : null,
          ),
          const SizedBox(height: 16),
          // Date of birth picker
          InkWell(
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: DateTime.now()
                    .subtract(const Duration(days: 6570)), // 18 years ago
                firstDate: DateTime.now()
                    .subtract(const Duration(days: 36500)), // 100 years ago
                lastDate: DateTime.now()
                    .subtract(const Duration(days: 6570)), // 18 years ago
              );
              if (date != null) {
                setState(() => _signUpForm.dateOfBirth = date);
              }
            },
            child: InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Date of Birth',
                hintText: 'Select your date of birth',
              ),
              child: Text(
                _signUpForm.dateOfBirth == null
                    ? 'Select date'
                    : DateFormat('MMM dd, yyyy')
                        .format(_signUpForm.dateOfBirth!),
              ),
            ),
          ),
        ],
      ),
      isActive: _currentStep >= 0,
    );
  }

  Step _buildPersonalDetailsStep() {
    return Step(
      title: const Text('Personal Details'),
      content: Column(
        children: [
          // Gender selection
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Gender',
            ),
            items: ['Male', 'Female', 'Non-binary', 'Prefer not to say']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() => _signUpForm.gender = value);
              }
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Location',
              hintText: 'Enter your city',
            ),
            onChanged: (value) => _signUpForm.location = value,
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Occupation',
              hintText: 'What do you do?',
            ),
            onChanged: (value) => _signUpForm.occupation = value,
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Bio',
              hintText: 'Tell us about yourself',
            ),
            maxLines: 3,
            onChanged: (value) => _signUpForm.bio = value,
          ),
        ],
      ),
      isActive: _currentStep >= 1,
    );
  }

  Step _buildInterestsStep() {
    return Step(
      title: const Text('Interests'),
      content: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: _availableInterests.map((interest) {
          final isSelected = _signUpForm.interests.contains(interest);
          return FilterChip(
            label: Text(interest),
            selected: isSelected,
            onSelected: (selected) {
              setState(() {
                if (selected) {
                  _signUpForm.interests.add(interest);
                } else {
                  _signUpForm.interests.remove(interest);
                }
              });
            },
            selectedColor: const Color(0xFF7C3AED).withOpacity(0.2),
            checkmarkColor: const Color(0xFF7C3AED),
          );
        }).toList(),
      ),
      isActive: _currentStep >= 2,
    );
  }

  /*
  Step _buildSecurityStep() {
    return Step(
      title: const Text('Security'),
      content: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => _signUpForm.email = value,
            validator: (value) => _signUpForm.validateEmail(),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Password',
              hintText: 'Create a password',
            ),
            obscureText: true,
            onChanged: (value) => _signUpForm.password = value,
            validator: (value) => _signUpForm.validatePassword(),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              hintText: 'Enter your phone number',
            ),
            keyboardType: TextInputType.phone,
            onChanged: (value) => _signUpForm.phoneNumber = value,
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Handle sign up completion
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7C3AED),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      isActive: _currentStep >= 3,
    );
  }
  */
}
