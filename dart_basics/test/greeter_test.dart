import 'package:dart_basics/greeter.dart';
import 'package:test/test.dart';

void main() {
  test('Greeter says hello correctly', () {
    expect(Greeter('Alice').greet(), 'Hello, Alice!');
  });
}