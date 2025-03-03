import 'package:elevate_1/core/services/api_manager/api_results.dart';
import 'package:elevate_1/data/models/calculator.dart';
import 'package:test/test.dart';

void main() {
  late Calculator calculator;
  // ! setUp  ----------> run before every test cases
  setUp(() {
    print('setUp +++++++++++++++++++++++++++++++++');
  });

// ! setUpAll -----------> run before all test cases one time
  setUpAll(() {
    calculator = Calculator();
    print('setUpAll +++++++++++++++++++++++++++++++++');
  });

  // ! tearDown  ----------> run after every test cases
  tearDown(() {
    print('tearDown +++++++++++++++++++++++++++++++++');
  });

// ! tearDownAll -----------> run after all test cases one time
  tearDownAll(() {
    print('tearDownAll +++++++++++++++++++++++++++++++++');
  });

  group('test add functions', () {
    test('test add function 3+4=7', () {
      // arrange (to initialize every thing you will use)

      // act (run function to test)
      int result = calculator.add(3, 4);

      // assert ( expected result)
      expect(result, 7);
    });

    test('test add function -3 + 4 = 1 ', () {
      // arrange (to initialize every thing you will use)

      // act (run function to test)
      int result = calculator.add(-3, 4);

      // assert ( expected result)
      expect(result, 1);
    });

    test('test add function when a greater than 5 ', () {
      // arrange (to initialize every thing you will use)

      // act (run function to test)
      int result = calculator.add(6, 4);

      // assert ( expected result)
      expect(result, isA<ApiScuccess>());
    });
  });

  group('test divide function ', () {
    test('test divide function  with d=0', () {
      int result = calculator.divide(10, 0);

      expect(result, 0);
    });
  });
}
