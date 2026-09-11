import 'package:flutter/material.dart';

class PlacementScreen extends StatelessWidget {
  const PlacementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFC),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xff202124),
          ),
        ),
        title: const Text(
          'Placement',
          style: TextStyle(
            color: Color(0xff202124),
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff6D4AFF),
                      Color(0xff4A2ACF),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(42),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff4A2ACF)
                          .withOpacity(0.20),
                      blurRadius: 30,
                      offset: const Offset(0, 14),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.work_rounded,
                  color: Colors.white,
                  size: 70,
                ),
              ),

              const SizedBox(height: 34),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffEEEAFE),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'COMING SOON',
                  style: TextStyle(
                    color: Color(0xff4A2ACF),
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.2,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                'Placement',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff202124),
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Your placement journey starts here.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff4A4B52),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'We are preparing something exciting to help you discover opportunities, companies and build your career.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff85868D),
                  fontSize: 14,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 32),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xffECECF1),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                        _buildDot(true),
                        _buildLine(),
                        _buildDot(false),
                        _buildLine(),
                        _buildDot(false),
                      ],
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      'We are working on it',
                      style: TextStyle(
                        color: Color(0xff202124),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Placement features will be available soon.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff8A8B92),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xff4A2ACF),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  'Back to Campuz',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildDot(bool active) {
    return Container(
      width: active ? 12 : 9,
      height: active ? 12 : 9,
      decoration: BoxDecoration(
        color: active
            ? const Color(0xff4A2ACF)
            : const Color(0xffD9D6EA),
        shape: BoxShape.circle,
      ),
    );
  }

  static Widget _buildLine() {
    return Container(
      width: 45,
      height: 2,
      margin: const EdgeInsets.symmetric(horizontal: 7),
      color: const Color(0xffE3E0ED),
    );
  }
}