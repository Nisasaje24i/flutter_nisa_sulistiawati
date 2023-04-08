import 'student_course.dart';

void main(List<String> args) {
  var course1 = Course(
      'Inggris', ' Ini adalah kursus bahasa inggris dengan durasi 90 menit');
  var course2 = Course(
      'Indonesia', 'Ini adalah kursus bahasa indonesia dengan durasi 60 menit');
  var std = Student('Nisa', 'IF');

  std.tambahCourse(course1);
  std.tambahCourse(course2);
  print('Data siswa : ${std.nama}, ${std.kelas}');
  print('Daftar Course : 1 = ${course1.judul},${course1.deskripsi}');
  print('Daftar Course : 2 = ${course2.judul}, ${course2.deskripsi}');
  std.hapusCourse(1);
  std.lihatCourse();
}
