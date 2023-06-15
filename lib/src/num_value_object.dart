import 'package:vorun/src/value_object.dart';

class NumValueObject<T extends num> extends ValueObject<T> {
  const NumValueObject(T value) : super(value);

  NumValueObject<num> operator +(NumValueObject<num> other) =>
      NumValueObject(value + other.value);

  NumValueObject<num> operator -(NumValueObject<num> other) =>
      NumValueObject(value - other.value);

  NumValueObject<num> operator -() => NumValueObject(-value);

  NumValueObject<num> operator *(NumValueObject<num> other) =>
      NumValueObject(value * other.value);

  NumValueObject<double> operator /(NumValueObject<num> other) =>
      NumValueObject(value / other.value);

  NumValueObject<int> operator ~/(NumValueObject<num> other) =>
      NumValueObject(value ~/ other.value);

  NumValueObject<num> operator %(NumValueObject<num> other) =>
      NumValueObject(value % other.value);

  bool operator >(NumValueObject<num> other) => value > other.value;

  bool operator <(NumValueObject<num> other) => value < other.value;

  bool operator >=(NumValueObject<num> other) => value >= other.value;

  bool operator <=(NumValueObject<num> other) => value <= other.value;

  NumValueObject<num> remainder(num other) =>
      NumValueObject(value.remainder(other));

  bool get isNan => value.isNaN;

  bool get isNegative => value.isNegative;

  bool get isInfinite => value.isInfinite;

  bool get isFinite => value.isFinite;

  NumValueObject<num> abs() => NumValueObject(value.abs());

  num get sign => value.sign;

  NumValueObject<int> round() => NumValueObject(value.round());

  NumValueObject<int> floor() => NumValueObject(value.floor());

  NumValueObject<int> ceil() => NumValueObject(value.ceil());

  NumValueObject<double> roundToDouble() =>
      NumValueObject(value.roundToDouble());

  NumValueObject<double> floorToDouble() =>
      NumValueObject(value.floorToDouble());

  NumValueObject<double> ceilToDouble() => NumValueObject(value.ceilToDouble());

  NumValueObject<int> truncate() => NumValueObject(value.truncate());

  NumValueObject<double> truncateToDouble() =>
      NumValueObject(value.truncateToDouble());

  NumValueObject<T> clamp(num lowerLimit, num upperLimit) =>
      NumValueObject(value.clamp(lowerLimit, upperLimit) as T);

  NumValueObject<int> toInt() => NumValueObject(value.toInt());

  NumValueObject<double> toDouble() => NumValueObject(value.toDouble());

  String toStringAsFixed(int fractionDigits) =>
      value.toStringAsFixed(fractionDigits);

  String toStringAsExponential([int? fractionDigits]) =>
      value.toStringAsExponential(fractionDigits);

  String toStringAsPrecision(int precision) =>
      value.toStringAsPrecision(precision);

  static NumValueObject<num> parse(String input) {
    return NumValueObject(num.parse(input));
  }

  static NumValueObject<num>? tryParse(String input) {
    final n = num.tryParse(input);
    return n == null ? null : NumValueObject(n);
  }
}
