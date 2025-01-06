// Suggested code may be subject to a license. Learn more: ~LicenseLog:3690002361.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:615482134.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1305362517.

import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingSlide> _slides = [
    OnboardingSlide(
      title: 'Welcome to BlindDate',
      description:
          'Discover meaningful connections based on personality, not just looks.',
    ),
    OnboardingSlide(
      title: 'Personality First',
      description:
          'Answer fun questions to reveal your true self and find compatible matches.',
    ),
    OnboardingSlide(
      title: 'Blind Matches',
      description:
          'Chat and connect before seeing photos. Get to know the person behind the profile.',
    ),
    OnboardingSlide(
      title: 'Safe and Secure',
      description:
          'Our app prioritizes your safety with verified profiles and secure messaging.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _slides.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return _buildSlide(_slides[index]);
                },
              ),
            ),
            _buildIndicators(),
            const SizedBox(height: 20),
            _buildNextButton(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSlide(OnboardingSlide slide) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            slide.title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF7C3AED), // Primary purple color
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            slide.description,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _slides.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: _currentPage == index ? 20 : 10,
          height: 10,
          decoration: BoxDecoration(
            color:
                _currentPage == index ? const Color(0xFF7C3AED) : Colors.grey,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: () {
          if (_currentPage == _slides.length - 1) {
            Navigator.pushReplacementNamed(context, '/signup');
          } else {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF7C3AED), // Primary purple color
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          _currentPage == _slides.length - 1 ? 'Get Started' : 'Next',
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}

class OnboardingSlide {
  final String title;
  final String description;

  OnboardingSlide({required this.title, required this.description});
}
