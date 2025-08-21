import 'package:flutter/material.dart';
import 'package:playvies/Widget/myButton.dart';
import 'package:playvies/Widget/myImage.dart';
import 'package:playvies/Widget/myText.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Color(0xFFD8E9A8),
            fontFamily: 'Calistoga',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color(0xFF191A19),
        centerTitle: true,
        elevation: 0,
        // Add gradient background
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF191A19), Color(0xFF2A2B2A)],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF191A19), Color(0xFF0F100F)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Image with glow effect
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFD8E9A8).withOpacity(0.3),
                      blurRadius: 20,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: MyImage(
                  imageUrl:
                      'https://i.pinimg.com/564x/93/d6/f5/93d6f51c8076c1649f1a4dc64000bc38.jpg',
                  width: 110,
                  height: 110,
                  radius: 110,
                ),
              ),
              const SizedBox(height: 25),
              
              // Name with better typography
              myText(
                text: "Zaacx",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFD8E9A8),
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              
              
              const SizedBox(height: 30),
              
              // Stats section with better styling
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2B2A).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFD8E9A8).withOpacity(0.2),
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatColumn("Followers", "1M"),
                    Container(
                      width: 1,
                      height: 40,
                      color: const Color(0xFFD8E9A8).withOpacity(0.3),
                    ),
                    _buildStatColumn("Following", "1"),
                  ],
                ),
              ),
              
              const Spacer(),
              
              // Action buttons with better spacing
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildActionButton("🎬 Movie list", 140),
                      _buildActionButton("📺 Series list", 140),
                    ],
                  ),
                  const SizedBox(height: 15),
                  
                  // Join date button with icon
                  Container(
                    width: 290,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFD8E9A8).withOpacity(0.1),
                          const Color(0xFFD8E9A8).withOpacity(0.05),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color(0xFFD8E9A8).withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: Color(0xFFD8E9A8),
                          size: 20,
                        ),
                        const SizedBox(height: 5),
                        myText(
                          text: "Joined\n31 Desember 2021",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFFD8E9A8),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, String value) {
    return Column(
      children: [
        myText(
          text: value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFD8E9A8),
          ),
        ),
        const SizedBox(height: 5),
        myText(
          text: label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color(0xFFD8E9A8).withOpacity(0.8),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(String text, double width) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFD8E9A8), Color(0xFFB8C98A)],
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFD8E9A8).withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(15),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xFF191A19),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}