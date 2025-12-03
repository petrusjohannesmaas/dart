import 'package:dart_basics/calculator.dart' as calculator;
import 'package:dart_basics/greeter.dart';

void main() {
  final greeter = Greeter('Goku');
  print(greeter.greet());
  print('Sum is: ${calculator.add(10, 5)}!');
}
