class ScheduleItem {
  final String courseName;
  final String lecturerName;
  final String day;
  final String time;
  final String room;
  final String lecturerPhotoAsset;

  const ScheduleItem({
    required this.courseName,
    required this.lecturerName,
    required this.day,
    required this.time,
    required this.room,
    required this.lecturerPhotoAsset,
  });
}