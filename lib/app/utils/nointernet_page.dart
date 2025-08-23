import 'package:flutter/material.dart';

class NoConnectionScreen extends StatelessWidget {
  final VoidCallback onRetry;

  const NoConnectionScreen({super.key, required this.onRetry});

  // Brand colors
  static const Color primaryYellow = Color(0xFFFEAA00);
  static const Color secondaryGray = Color(0xFFE6E6E6);
  static const Color darkGray = Color(0xFF333333);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              secondaryGray.withValues(alpha: 0.3),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo/Icon with animation
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: primaryYellow.withValues(alpha: 0.2),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.wifi_off_rounded,
                  size: 60,
                  color: primaryYellow,
                ),
              ),

              const SizedBox(height: 40),

              // Main error message
              const Text(
                'لا يوجد اتصال بالإنترنت',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: darkGray,
                  fontWeight: FontWeight.bold,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 16),

              // Description
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'يرجى التحقق من اتصالك بالإنترنت',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: darkGray.withValues(alpha: 0.7),
                    height: 1.6,
                  ),
                ),
              ),

              const SizedBox(height: 48),

              // Retry button with modern design
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: onRetry,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryYellow,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.refresh_rounded,
                          color: Colors.white,
                          size: 22,
                        ),
                        SizedBox(width: 12),
                        Text(
                          'إعادة المحاولة',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Additional help text
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: TextButton(
                  onPressed: () {
                    // Optional: Add additional help or troubleshooting steps
                  },
                  child: Text(
                    'تحتاج مساعدة؟',
                    style: TextStyle(
                      color: darkGray.withValues(alpha: 0.7),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}