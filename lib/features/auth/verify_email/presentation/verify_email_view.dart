import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailVerificationView extends StatefulWidget {
  const EmailVerificationView({super.key});

  @override
  EmailVerificationViewState createState() => EmailVerificationViewState();
}

class EmailVerificationViewState extends State<EmailVerificationView> {
  late Timer _timer;
  int _remainingTime = 120; // 2 minutes in seconds
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        setState(() {
          _canResend = true;
          _timer.cancel();
        });
      }
    });
  }

  String _formatTime(int timeInSeconds) {
    final int minutes = timeInSeconds ~/ 60;
    final int seconds = timeInSeconds % 60;
    return '${minutes}m ${seconds}s';
  }

  void _resendCode() {
    // Implement the logic for resending the code here
    setState(() {
      _remainingTime = 120;
      _canResend = false;
    });
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: SvgPicture.asset('assets/svgs/applogo.svg')),
                const SizedBox(height: 20),
                const Text(
                  'Verify Your Email Address',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'A verification code has been sent to your email address. Check your provided email address to verify your account.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 32),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      const Text(
                        'Verification Code',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Resend Code',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFFBBD9D5)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter verification code',
                    suffix: GestureDetector(
                      onTap: _canResend ? _resendCode : null,
                      child: Text(
                        'Resend Code',
                        style: TextStyle(
                          color: _canResend
                              ? const Color(0xFF00796B)
                              : Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    _canResend ? '' : _formatTime(_remainingTime),
                    style: const TextStyle(color: Color(0xFF007465)),
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle email verification submission
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: const Color(0xFF00796B), // Button color
                    ),
                    child: const Text(
                      'VERIFY ME',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
