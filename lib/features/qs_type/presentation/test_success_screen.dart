import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TestSuccessfulScreen extends StatefulWidget {
  const TestSuccessfulScreen({super.key});

  @override
  TestSuccessfulScreenState createState() => TestSuccessfulScreenState();
}

class TestSuccessfulScreenState extends State<TestSuccessfulScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(vsync: this);

    // Listen for when the animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Stop the animation once it completes
        _controller.stop();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie/success.json',
                width: 100,
                controller: _controller,
                onLoaded: (composition) {
                  // Play the animation once it's loaded
                  _controller
                    ..duration = composition.duration
                    ..forward(); // Start the animation
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Test Complete!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFD9EAE8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Color(0xFF007465),
                      child: Text(
                        '7/20',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: const Color(0xFFD8D8D8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Performance',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 30),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE2425C),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              'Poor',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                    Container(
                      height: 50,
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'View Wrong Answers',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 8),
                          Center(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: 210,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          // Equivalent to 0deg in CSS
                          end: Alignment.bottomCenter,
                          // From top to bottom
                          colors: [
                            Color(0xFF007465), // #007465
                            Color(0xFF00A691), // #00A691
                          ],
                          stops: [
                            0.0,
                            1.0
                          ], // Define gradient stops for 0% and 100%
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors
                            .white, // This color will be overridden by the gradient
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Back To Home',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
