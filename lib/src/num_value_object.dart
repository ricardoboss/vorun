import 'package:vorun/src/value_object.dart';

abstract class NumValueObject<T extends num> extends ValueObject<T> {
  const NumValueObject(T value) : super(value);

  num operator +(NumValueObject<num> other) => value + other.value;

  num operator -(NumValueObject<num> other) => value - other.value;

  num operator -() => -value;

  num operator *(NumValueObject<num> other) => value * other.value;

  double operator /(NumValueObject<num> other) => value / other.value;

  int operator ~/(NumValueObject<num> other) => value ~/ other.value;

  num operator %(NumValueObject<num> other) => value % other.value;

  bool operator >(NumValueObject<num> other) => value > other.value;

  bool operator <(NumValueObject<num> other) => value < other.value;

  bool operator >=(NumValueObject<num> other) => value >= other.value;

  bool operator <=(NumValueObject<num> other) => value <= other.value;

  num remainder(num other) => value.remainder(other);

  bool get isNan => value.isNaN;

  bool get isNegative => value.isNegative;

  bool get isInfinite => value.isInfinite;

  bool get isFinite => value.isFinite;

  num abs() => value.abs();

  num get sign => value.sign;

  int round() => value.round();

  int floor() => value.floor();

  int ceil() => value.ceil();

  double roundToDouble() => value.roundToDouble();

  double floorToDouble() => value.floorToDouble();

  double ceilToDouble() => value.ceilToDouble();

  int truncate() => value.truncate();

  double truncateToDouble() => value.truncateToDouble();

  num clamp(num lowerLimit, num upperLimit) =>
      value.clamp(lowerLimit, upperLimit);

  int toInt() => value.toInt();

  double toDouble() => value.toDouble();

  String toStringAsFixed(int fractionDigits) =>
      value.toStringAsFixed(fractionDigits);

  String toStringAsExponential([int? fractionDigits]) =>
      value.toStringAsExponential(fractionDigits);

  String toStringAsPrecision(int precision) =>
      value.toStringAsPrecision(precision);
}
