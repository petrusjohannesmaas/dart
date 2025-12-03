import 'package:dart_basics/first_feature.dart';
import 'package:test/test.dart';

void main() {
  test('add returns the correct sum', () {
    expect(add(10, 5), 15);
    
    expect(add(0, 0), 0);
    expect(add(-5, 5), 0);
  });
}