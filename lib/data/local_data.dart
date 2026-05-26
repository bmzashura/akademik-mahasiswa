import '../models/student_profile.dart';
import '../models/schedule_item.dart';
import '../models/home_menu_item.dart';

class LocalData {
  static const StudentProfile studentProfile = StudentProfile(
    name: 'Bemis Huntala',
    nim: '1002240018',
    programStudy: 'Teknologi Informasi',
    campusName: 'Institut Teknologi Tanggerang Selatan',
    photoAsset: 'assets/images/1002240018.png',
  );

  static const List<ScheduleItem> scheduleItems = [
    ScheduleItem(
      courseName: 'Pembelajaran Mesin',
      lecturerName: 'AOLIA IKHWANUDIN S.Kom., M.Kom.',
      day: 'Senin',
      time: '17:00 - 19:00',
      room: 'Online 4',
      lecturerPhotoAsset: 'assets/images/default_avatar.png',
    ),
    ScheduleItem(
      courseName: 'Keamanan Informasi & Jaringan',
      lecturerName: 'Ir. ONNO WIDODO PURBO M.Eng., Ph.D',
      day: 'Senin',
      time: '19:00 - 21:00',
      room: 'Online 1',
      lecturerPhotoAsset: 'assets/images/default_avatar.png',
    ),
    ScheduleItem(
      courseName: 'Pemrograman Back-End',
      lecturerName: 'ANAS NASRULLOH S.Kom., M.Kom',
      day: 'Selasa',
      time: '19:00 - 21:00',
      room: 'Online 4',
      lecturerPhotoAsset: 'assets/images/default_avatar.png',
    ),
    ScheduleItem(
      courseName: 'Keamanan Aplikasi Mobile',
      lecturerName: 'TAUFIQ IQBAL RAMDHANI ST., M.Sc',
      day: 'Rabu',
      time: '17:00 - 19:00',
      room: 'Online 4',
      lecturerPhotoAsset: 'assets/images/default_avatar.png',
    ),
    ScheduleItem(
      courseName: 'Pengujian Penetrasi Aplikasi Mobile',
      lecturerName: 'TAUFIQ IQBAL RAMDHANI ST., M.Sc',
      day: 'Rabu',
      time: '19:00 - 20:20',
      room: 'Online 1',
      lecturerPhotoAsset: 'assets/images/default_avatar.png',
    ),
    ScheduleItem(
      courseName: 'Pemrograman Aplikasi Mobile',
      lecturerName: 'BAMBANG WIDODO S.Kom., M.T.I',
      day: 'Kamis',
      time: '17:00 - 19:00',
      room: 'Online 4',
      lecturerPhotoAsset: 'assets/images/default_avatar.png',
    ),
    ScheduleItem(
      courseName: 'Pengujian Perangkat Lunak',
      lecturerName: 'LUTHFIA SASKIA S.Tr.Kom., M.Eng.',
      day: 'Jumat',
      time: '19:00 - 21:00',
      room: 'Online 4',
      lecturerPhotoAsset: 'assets/images/default_avatar.png',
    ),
  ];

  static const List<HomeMenuItem> homeMenuItems = [
    HomeMenuItem(
      title: 'Akademik',
      imageAsset: 'assets/images/home_menu_1.png',
    ),
    HomeMenuItem(
      title: 'Nilai',
      imageAsset: 'assets/images/home_menu_2.png',
    ),
    HomeMenuItem(
      title: 'Informasi',
      imageAsset: 'assets/images/home_menu_3.png',
    ),
    HomeMenuItem(
      title: 'Kalender',
      imageAsset: 'assets/images/home_menu_4.png',
    ),
  ];
}