import 'package:flutter/material.dart';

import '../design/app_colors.dart';

class AppAlerts {
  static Widget success(String message) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.secondary90,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.secondary90),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            flex: 2,
            child: Icon(
              Icons.check_box,
              color: AppColors.success90,
              size: 28,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 20,
            child: Text(
              message,
              style: const TextStyle(
                color: AppColors.success90,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.4,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget error(String message) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.warning90,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.warning90),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            flex: 2,
            child: Icon(
              Icons.add_alarm,
              color: AppColors.warning90,
              size: 28,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 20,
            child: Text(
              message,
              style: const TextStyle(
                color: AppColors.warning90,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.4,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget info(String message) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.info,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.info),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            flex: 2,
            child: Icon(
              Icons.info,
              color: AppColors.info,
              size: 28,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 20,
            child: Text(
              message,
              style: const TextStyle(
                color: AppColors.info,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.4,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget warning(String message) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.warning90,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.warning90),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            flex: 2,
            child: Icon(
              Icons.error,
              color: AppColors.warning90,
              size: 28,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 20,
            child: Text(
              message,
              style: const TextStyle(
                color: AppColors.warning90,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.4,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
