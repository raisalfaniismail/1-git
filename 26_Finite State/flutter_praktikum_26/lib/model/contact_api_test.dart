import 'package:flutter_praktikum_20/model/contact_api.dart';
import 'package:flutter_praktikum_20/model/contact_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'contact_api_test.mocks.dart';

@GenerateMocks([ContactAPI])
void main() {
  group('ContactAPI', () {
    ContactAPI contactAPI = MockContactAPI();
    test('get all contacts return data', () async {
      when(contactAPI.getAllContacts()).thenAnswer(
        (_) async => <Contact>[
          Contact(id: 1, nama: 'a', nomor: '0'),
        ],
      );

      var contacts = await contactAPI.getAllContacts();
      expect(contacts.isNotEmpty, true);
    });
  });
}
