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
      width: 240,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.secondary90,
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
              borderRadius: BorderRadius.circular(4),
              color: indexContent == 0 ? AppColors.primary90: Colors.transparent,
            ),
            child: ListTile(
              horizontalTitleGap: 16,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              onTap: () {setIndexContent(0);},
              textColor: indexContent == 0 ? AppColors.primary90 : AppColors.blackText,
              leading: Icon(
                Icons.square,
                color: indexContent == 0 ? AppColors.primary90 : AppColors.blackText,
              ),
              title: Text(
                "Panel",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.4,
                  color: indexContent == 0 ? AppColors.primary90 : AppColors.blackText,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Ürünler setIndexContent(1)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: indexContent == 1 ? AppColors.primary90 : Colors.transparent,
            ),
            child: ListTile(
              horizontalTitleGap: 16,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              onTap: () {setIndexContent(1);},
              textColor: indexContent == 1 ? AppColors.primary90 : AppColors.blackText,
              leading: Icon(
                Icons.people,
                color: indexContent == 1 ? AppColors.primary90 : AppColors.blackText,
              ),
              title: Text(
                "Ürünler",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.4,
                  color: indexContent == 1 ? AppColors.primary90 : AppColors.blackText,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Müşteriler
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: indexContent == 2 ? AppColors.primary90 : Colors.transparent,
            ),
            child: ListTile(
              horizontalTitleGap: 16,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              onTap: () {setIndexContent(2);},
              textColor: indexContent == 2 ? AppColors.primary90 : AppColors.blackText,
              leading: Icon(
                Icons.people,
                color: indexContent == 2 ? AppColors.primary90 : AppColors.blackText,
              ),
              title: Text(
                "Müşteriler",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.4,
                  color: indexContent == 2 ? AppColors.primary90 : AppColors.blackText,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Satış Kanalları
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: indexContent == 3 ? AppColors.primary90 : Colors.transparent,
            ),
            child: ListTile(
              horizontalTitleGap: 16,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              onTap: () {setIndexContent(3);},
              textColor: indexContent == 3 ? AppColors.primary90 : AppColors.blackText,
              leading: Icon(
                Icons.people,
                color: indexContent == 3 ? AppColors.primary90 : AppColors.blackText,
              ),
              title: Text(
                "Sarış Kanalları",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.4,
                  color: indexContent == 3 ? AppColors.primary90 : AppColors.blackText,
                ),
              ),
            ),
          ),
          // Markalar
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: indexContent == 4 ? AppColors.primary90: Colors.transparent,
            ),
            child: ListTile(
              horizontalTitleGap: 16,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              onTap: () {setIndexContent(4);},
              textColor: indexContent == 4 ? AppColors.primary90 : AppColors.blackText,
              leading: Icon(
                Icons.qr_code_2,
                color: indexContent == 4 ? AppColors.primary90 : AppColors.blackText,
              ),
              title: Text(
                "Markalar",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.4,
                  color: indexContent == 4 ? AppColors.primary90 : AppColors.blackText,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

