import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../../widgets/schedule_tile.dart';
import '../../data/local_data.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppTheme.primaryColor,
              Color(0xFF0D47A1),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(AppTheme.spacing24),
                child: Row(
                  children: [
                    const Text(
                      'Jadwal Kuliah',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              // Subtitle
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppTheme.spacing24),
                child: Row(
                  children: [
                    Text(
                      'Semester Genap 2025/2026',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Content card
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppTheme.spacing24),
                    child: ListView.builder(
                      itemCount: LocalData.scheduleItems.length,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ScheduleTile(
                          scheduleItem: LocalData.scheduleItems[index],
                        );
                      },
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