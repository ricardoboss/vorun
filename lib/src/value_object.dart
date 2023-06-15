abstract class ValueObject<T> implements Comparable {
  final T value;

  const ValueObject(this.value);

  @override
  bool operator ==(dynamic other) {
    if (other is T) {
      return value == other;
    }

    if (other.runtimeType != runtimeType || other is! ValueObject<T>) {
      return false;
    }

    return value == other.value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  int compareTo(dynamic other) {
    if (other is T) {
      return compareValues(other);
    }

    if (other.runtimeType != runtimeType || other is! ValueObject<T>) {
      throw ArgumentError.value(other, "other");
    }

    return compareValues(other.value);
  }

  int compareValues(T other) {
    final v = value;
    if (v is! Comparable<T>) {
      throw ArgumentError.value(value, "value", "Value is not Comparable<T>, please override compareValues");
    }

    return v.compareTo(other);
  }

  @override
  String toString() => '$runtimeType($value)';
}
