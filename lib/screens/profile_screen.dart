import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  final String userName = "jhon Smith";
  final String userImage = "assets/images/cat.jpg"; // replace with your image
  final int totalOrders = 25;
  final int cancelledOrders = 2;
  final int deliveredOrders = 20;
  final double totalSpent = 1250.75;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(userImage),
            ),
            const SizedBox(height: 16),
            Text(
              userName,
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 2.5,
              ),
              children: [
                _buildStatCard("Total Orders", totalOrders.toString(),
                    Colors.blue.shade100, Colors.blue),
                _buildStatCard("Delivered", deliveredOrders.toString(),
                    Colors.green.shade100, Colors.green),
                _buildStatCard("Cancelled", cancelledOrders.toString(),
                    Colors.red.shade100, Colors.red),
                _buildStatCard("Total Spent",
                    "\$${totalSpent.toStringAsFixed(2)}",
                    Colors.orange.shade100, Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(
      String title, String value, Color bgColor, Color textColor) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: textColor)),
          const SizedBox(height: 6),
          Text(title, style: TextStyle(color: textColor)),
        ],
      ),
    );
  }
}
