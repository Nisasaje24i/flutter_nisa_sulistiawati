import 'dart:io';
import 'dart:ui';

class ListContact {
  String nama;
  String noHp;
  DateTime? date;
  Color warna;
  File? file;

  ListContact(
      {required this.nama,
      required this.noHp,
      required this.date,
      required this.warna,
      required this.file});
}

final List<ListContact> list_contactAdvance = [];
