import 'package:ment09_authentication_form/entity/phone.dart';

abstract class AbstractPhoneRepository {
  void add(Phone phone);

  Phone? getPhoneById(int id);

  List<Phone> getAllPhones();
}

class InMemoryPhoneRepository implements AbstractPhoneRepository {
  static late Map<int, Phone> _inMemoryPhones;
  static InMemoryPhoneRepository? _instance;

  InMemoryPhoneRepository() {
    _inMemoryPhones = {
      1: Phone(
          1,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "title",
          "DESC 1 PLACEHOLDER"),
      2: Phone(
          2,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "ewrwr",
          "DESC 2 PLACEHOLDER"),
      3: Phone(
          3,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "gewegw",
          "DESC 2 PLACEHOLDER"),
      4: Phone(
          4,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "ewr3345wr",
          "DESC 4 PLACEHOLDER"),
      5: Phone(
          5,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "ewrwvzZVr",
          "DESC 5 PLACEHOLDER"),
      6: Phone(
          6,
          "https://w7.pngwing.com/pngs/731/937/png-transparent-mobile-phones-telephone-handset-phone-icon-miscellaneous-angle-telephone-call-thumbnail.png",
          "title",
          "DESC 6 PLACEHOLDER"),
      7: Phone(
          7,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "ewrwr",
          "DESC 7 PLACEHOLDER"),
      8: Phone(
          8,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "gewegw",
          "DESC 8 PLACEHOLDER"),
      9: Phone(
          9,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "ewr3345wr",
          "DESC 9 PLACEHOLDER"),
      10: Phone(
          10,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "ewrwvzZVr",
          "DESC 10 PLACEHOLDER"),
      11: Phone(
          11,
          "https://w7.pngwing.com/pngs/731/937/png-transparent-mobile-phones-telephone-handset-phone-icon-miscellaneous-angle-telephone-call-thumbnail.png",
          "title",
          "DESC 11 PLACEHOLDER"),
      12: Phone(
          12,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "ewrwr",
          "DESC 12 PLACEHOLDER"),
      13: Phone(
          13,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "gewegw",
          "DESC 12 PLACEHOLDER"),
      14: Phone(
          14,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "ewr3345wr",
          "DESC 14 PLACEHOLDER"),
      15: Phone(
          15,
          "https://chipgifts.ru/image/cache/Light/Light%20Phone%202/-Light-Phone-2_1-1000x1000.jpg",
          "ewrwvzZVr",
          "DESC 15 PLACEHOLDER"),
    };
  }

  static InMemoryPhoneRepository getInstance() {
    _instance ??= InMemoryPhoneRepository();
    return _instance!;
  }

  @override
  void add(Phone phone) {
    throw UnimplementedError();
  }

  @override
  List<Phone> getAllPhones() {
    List<Phone> phones = [];
    for (MapEntry<int, Phone> entry in _inMemoryPhones.entries) {
      phones.add(entry.value);
    }
    return phones;
  }

  @override
  Phone? getPhoneById(int id) {
    return _inMemoryPhones[id];
  }
}
