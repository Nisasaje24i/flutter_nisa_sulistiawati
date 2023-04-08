class Course {
  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);
}

class Student {
  String nama;
  String kelas;
  List<Course> daftarCourse = [];

  Student(this.nama, this.kelas);

  void tambahCourse(Course addCourse) {
    daftarCourse.add(addCourse);
  }

  void hapusCourse(int hapus) {
    daftarCourse.removeAt(hapus);
  }

  void lihatCourse() {
    if (daftarCourse.isEmpty) {
      print('Belum ada course yang ditambahkan');
    } else {
      print('Course sudah ditambahkan');
      for (int i = 0; i <= daftarCourse.length; i++) {
        print('${daftarCourse[i].judul} - ${daftarCourse[i].deskripsi}');
      }
    }
  }
}
