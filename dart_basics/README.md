# 
Let’s learn Dart the right way — by writing real, testable, well-structured code from day one.

We’ll start with the official Dart template, then immediately improve it with a proper function, clean project layout, and real tests.

### Step 1: Create the Project

Open your terminal and run:

```bash
dart create dart_basics
cd dart_basics
```

This generates a clean, production-ready project structure. Let’s explore it.

### The Three Pillars of a Dart Project

| Folder       | Purpose                                 | What Goes Here                         |
|--------------|-----------------------------------------|----------------------------------------|
| `/bin`       | Entry point (the "runner")              | `main()` function — your app starts here |
| `/lib`       | Reusable library code                   | Functions, classes, logic — importable everywhere |
| `/test`      | Automated tests                         | Ensures your code works and keeps working |

Now let’s write real code.

### Our Goal: A Simple `add` Function (with Tests!)

We’ll create a reusable `add` function in `/lib`, call it from `/bin`, and prove it works using tests.

#### 1. Create the Function — `/lib/calculator.dart`

```dart
// lib/calculator.dart

/// Returns the sum of two integers.
int add(int a, int b) {
  return a + b;
}
```

> Pro tip: Put each logical piece in its own file. Even as a beginner, this builds good habits.

#### 2. Update the Entry Point — `/bin/dart_basics.dart`

```dart
// bin/dart_basics.dart

import 'package:dart_basics/calculator.dart' as calculator;

void main() {
  final result = calculator.add(11, 5);
  print('Sum is: $result!'); // Sum is: 16!
}
```

> Note: We use `as calculator` to give the imported library a clean prefix.

#### 3. Write Real Tests — `/test/calculator_test.dart`

Replace the default test with this:

```dart
// test/calculator_test.dart

import 'package:dart_basics/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('add returns the correct sum', () {
    expect(add(10, 5), equals(15));
    expect(add(0, 0), equals(0));
    expect(add(-5, 5), equals(0));
    expect(add(-3, -7), equals(-10));
  });

  test('add handles large numbers', () {
    expect(add(1000000, 2000000), equals(3000000));
  });
}
```

### Run Your Code

```bash
# Run the app
dart run

# Run the tests (you’ll see beautiful green output!)
dart test
```

If everything passes — congratulations! You’ve just built your first **properly structured, tested Dart program**.

### Why This Structure Matters (Even for Beginners)

| Benefit                        | What You Practiced Today                                 |
|--------------------------------|-----------------------------------------------------------|
| Separation of concerns         | Logic in `/lib`, execution in `/bin`, verification in `/test` |
| Reusability                    | Your `add` function can be imported by any other file     |
| Confidence through testing     | You proved your code works — automatically               |
| Real-world readiness           | This is exactly how professional Dart/Flutter projects are organized |

### Next Steps: Level Up Your Dart Skills

Now try these challenges in the same project:

#### Task 1: Create a Class
```dart
// lib/greeter.dart
class Greeter {
  final String name;
  
  Greeter(this.name);
  
  String greet() => 'Hello, $name!';
}
```

Then use it in `main()`:
```dart
import 'package:dart_basics/greeter.dart';

void main() {
  final greeter = Greeter('Dart Beginner');
  print(greeter.greet());
}
```

#### Task 2: Write a Test for Your Class
```dart
test('Greeter says hello correctly', () {
  expect(Greeter('Alice').greet(), 'Hello, Alice!');
});
```

### Useful Commands Cheat Sheet

```bash
dart run          # Run the program
dart test         # Run all tests
dart format .     # Auto-format your code (do this often!)
dart fix --apply  # Automatically fix lint issues
```

### What's next?

You didn’t just print "Hello World".  
You built a **real Dart package** with:
- Clean architecture
- Reusable code
- Automated tests
- Modern tooling

This is how professional Dart and Flutter developers work — and now you’re doing it too.

Keep experimenting in this project. Add more functions. Break things. Write tests. Fix them.

You’ve got this

Ready for the next step? Try building a simple CLI calculator that takes inputs and does the calculation. The foundation you just built will carry you far.

Happy coding!