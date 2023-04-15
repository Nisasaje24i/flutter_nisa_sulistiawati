import 'package:test/test.dart';
import 'package:tugas_finite_state/api/contact_api.dart';
import 'package:tugas_finite_state/api/foods_api.dart';
import 'package:tugas_finite_state/model/foods_model.dart';

void main() {
  group('ContactAPI', () {
    test('get all foods returns data', () async {
      var contact = await ContactAPI.getContact();
      expect(contact.isNotEmpty, true);
    });
  });
}
