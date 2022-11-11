import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../design/app_colors.dart';
import '../states/states.dart';

class AppSidebar extends StatefulWidget {
  const AppSidebar({Key? key}) : super(key: key);

  @override
  State<AppSidebar> createState() => _AppSidebarState();
}

class _AppSidebarState extends State<AppSidebar> {
  @override
  Widget build(BuildContext context) {
    Function setIndexContent = Provider.of<States>(context).setIndexContent;
    int indexContent = Provider.of<States>(context).indexContent;

    return Container(
      width: 220,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xffE4E3E3).withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(4, 0),
          ),
        ],
      ),
      child: ListView(
        children: [
          //Image.asset('assets/images/logo-black.png'),
          // Dashboard
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: indexContent == 0 ? AppColors.primary10: Colors.transparent,
            ),
            child: ListTile(
              horizontalTitleGap: 10,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              onTap: () {setIndexContent(0);},
              // textColor: AppColors.blackText,
              // textColor: indexContent == 0 ? AppColors.blackText : AppColors.blackText,
              leading: const Icon(
                Icons.home_outlined,
                color: AppColors.primary,
              ),
              title: const Text(
                "Panel",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  color: AppColors.blackText,
                  // color: indexContent == 0 ? AppColors.primary90 : AppColors.blackText,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Products setIndexContent(1)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: indexContent == 1 ? AppColors.primary10 : Colors.transparent,
            ),
            child: ListTile(
              horizontalTitleGap: 10,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              onTap: () {setIndexContent(1);},
              textColor: indexContent == 1 ? AppColors.primary90 : AppColors.blackText,
              leading: const Icon(
                Icons.list_alt_outlined,
                color: AppColors.primary,
              ),
              title: const Text(
                "Ürünler",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  color: AppColors.blackText,
                  // color: indexContent == 1 ? AppColors.primary90 : AppColors.blackText,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Customers
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: indexContent == 2 ? AppColors.primary10 : Colors.transparent,
            ),
            child: ListTile(
              horizontalTitleGap: 10,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              onTap: () {setIndexContent(2);},
              textColor: indexContent == 2 ? AppColors.primary90 : AppColors.blackText,
              leading: const Icon(
                Icons.people_outline,
                color: AppColors.primary,
              ),
              title: const Text(
                "Müşteriler",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  color: AppColors.blackText,
                  // color: indexContent == 2 ? AppColors.primary90 : AppColors.blackText,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Distributions
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: indexContent == 3 ? AppColors.primary10 : Colors.transparent,
            ),
            child: ListTile(
              horizontalTitleGap: 10,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              onTap: () {setIndexContent(3);},
              textColor: indexContent == 3 ? AppColors.primary90 : AppColors.blackText,
              leading: const Icon(
                Icons.apartment,
                color: AppColors.primary,
              ),
              title: const Text(
                "Satış Kanalları",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  color: AppColors.blackText,
                  // color: indexContent == 3 ? AppColors.primary90 : AppColors.blackText,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Brands
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: indexContent == 4 ? AppColors.primary10: Colors.transparent,
            ),
            child: ListTile(
              horizontalTitleGap: 10,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              onTap: () {setIndexContent(4);},
              textColor: indexContent == 4 ? AppColors.primary90 : AppColors.blackText,
              leading: const Icon(
                Icons.add_circle_outline,
                color: AppColors.primary,
              ),
              title: const Text(
                "Markalar",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  color: AppColors.blackText,
                  // color: indexContent == 4 ? AppColors.primary90 : AppColors.blackText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

