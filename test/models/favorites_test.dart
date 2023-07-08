import 'package:flutter_test/flutter_test.dart';
import 'package:tdd/models/favorites.dart';

void main(){
  group('testing app Provider', () {
    var favorites = Favorites();
    test('A new item should be added', () {
      // arrange
      var number = 35;

      // act
      favorites.add(number);

      // assert
      expect(favorites.items.contains(number), true);
    });

    test('An item should be removed', () {
      var number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
