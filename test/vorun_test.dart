import 'package:test/test.dart';
import 'package:vorun/vorun.dart';

void main() {
  test('integer value objects behave like integers', () {
    const a = IntValueObject(123);
    const b = IntValueObject(456);

    expect(a + b, 123 + 456);
    expect(a - b, 123 - 456);
    expect(a * b, 123 * 456);
    expect(a / b, 123 / 456);
    expect(a ~/ b, 123 ~/ 456);
    expect(a % b, 123 % 456);
    expect(-a, -123);

    expect(a < b, 123 < 456);
    expect(a > b, 123 > 456);
    expect(a <= b, 123 <= 456);
    expect(a >= b, 123 >= 456);
    expect(a == b, 123 == 456);
    expect(b == a, 456 == 123);
    expect(a == 123, true);
    expect(a != b, 123 != 456);
    expect(a != 123, false);
  });

  test('double value objects behave like doubles', () {
    const a = DoubleValueObject(12.3);
    const b = DoubleValueObject(45.6);

    expect(a + b, 12.3 + 45.6);
    expect(a - b, 12.3 - 45.6);
    expect(a * b, 12.3 * 45.6);
    expect(a / b, 12.3 / 45.6);
    expect(a ~/ b, 12.3 ~/ 45.6);
    expect(a % b, 12.3 % 45.6);
    expect(-a.value, -12.3);

    expect(a < b, 12.3 < 45.6);
    expect(a > b, 12.3 > 45.6);
    expect(a <= b, 12.3 <= 45.6);
    expect(a >= b, 12.3 >= 45.6);
    expect(a == b, 12.3 == 45.6);
    expect(a != b, 12.3 != 45.6);
  });

  test('string value objects behave like doubles', () {
    const a = StringValueObject("abc");
    const b = StringValueObject("def");

    expect((a + b).value, "abc" + "def");

    expect(a == b, "abc" == "def");
    expect(a != b, "abc" != "def");
  });

  test('value objects are only comparable to instances of the same class', () {
    const a = ATestVo(123);
    const b = ATestVo(123);
    const c = BTestVo(123);
    const d = BTestVo(123);

    expect(a == b, true);
    expect(a == c, false);
    expect(c == d, true);
  });
}

class ATestVo extends IntValueObject {
  const ATestVo(super.value);
}

class BTestVo extends IntValueObject {
  const BTestVo(super.value);
}
