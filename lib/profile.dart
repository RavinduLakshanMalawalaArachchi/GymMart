import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            
            // Profile Section
            Center(
              child: Column(
                children: [
                  // Profile Image with Edit Button
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color.fromARGB(255, 0, 76, 153), width: 4),
                        ),
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/profileimg.png'),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 0, 76, 153),
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  // Name
                  const Text(
                    "Alex Sterling",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  // Email
                  Text(
                    "alex.sterling@metalmart.com",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  // Gold Member Badge
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 76, 153).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color.fromARGB(255, 0, 76, 153), width: 1),
                    ),
                    child: const Text(
                      "GOLD MEMBER",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 76, 153),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Activity Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Activity",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            
            _buildMenuItem(
              icon: Icons.inventory_2_outlined,
              title: "My Orders",
              color: const Color.fromARGB(255, 0, 76, 153),
              onTap: () {},
            ),
            
            _buildMenuItem(
              icon: Icons.favorite_outline,
              title: "Saved Favorites",
              color: const Color.fromARGB(255, 0, 76, 153),
              onTap: () {},
            ),
            
            const SizedBox(height: 30),
            
            // Account Settings Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Account Settings",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            
            _buildMenuItem(
              icon: Icons.location_on_outlined,
              title: "Shipping Address",
              color: Colors.grey.shade400,
              onTap: () {},
            ),
            
            _buildMenuItem(
              icon: Icons.credit_card_outlined,
              title: "Payment Methods",
              color: Colors.grey.shade400,
              onTap: () {},
            ),
            
            const SizedBox(height: 30),
            
            // Support Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Support",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
      
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade200, width: 1),
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Icon(Icons.chevron_right, color: Colors.grey.shade400, size: 28),
          ],
        ),
      ),
    );
  }

}