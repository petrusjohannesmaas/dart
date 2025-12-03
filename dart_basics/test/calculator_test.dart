import 'package:dart_basics/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Add returns the correct sum', () {
    expect(add(10, 5), 15);
    expect(add(0, 0), 0);
    expect(add(-5, 5), 0);
  });
}
