import 'package:vorun/src/value_object.dart';

class StringValueObject extends ValueObject<String> implements Pattern {
  const StringValueObject(String value) : super(value);

  factory StringValueObject.fromCharCodes(
    Iterable<int> charCodes, [
    int start = 0,
    int? end,
  ]) =>
      StringValueObject(
        String.fromCharCodes(
          charCodes,
          start,
          end,
        ),
      );

  factory StringValueObject.fromCharCode(int charCode) => StringValueObject(
        String.fromCharCode(
          charCode,
        ),
      );

  factory StringValueObject.fromEnvironment(
    String name, {
    String defaultValue = "",
  }) =>
      StringValueObject(
        String.fromEnvironment(
          name,
          defaultValue: defaultValue,
        ),
      );

  @override
  Iterable<Match> allMatches(String string, [int start = 0]) =>
      value.allMatches(string, start);

  @override
  Match? matchAsPrefix(String string, [int start = 0]) =>
      value.matchAsPrefix(string, start);

  String operator [](int index) => value[index];

  int codeUnitAt(int index) => value.codeUnitAt(index);

  int get length => value.length;

  bool endsWith(String other) => value.endsWith(other);

  bool startsWith(Pattern other, [int index = 0]) =>
      value.startsWith(other, index);

  int indexOf(Pattern pattern, [int start = 0]) =>
      value.indexOf(pattern, start);

  int lastIndexOf(Pattern pattern, [int? start]) =>
      value.lastIndexOf(pattern, start);

  bool get isEmpty => value.isEmpty;

  bool get isNotEmpty => value.isNotEmpty;

  StringValueObject operator +(StringValueObject other) =>
      StringValueObject(value + other.value);

  StringValueObject substring(int start, [int? end]) =>
      StringValueObject(value.substring(start, end));

  StringValueObject trim() => StringValueObject(value.trim());

  StringValueObject trimLeft() => StringValueObject(value.trimLeft());

  StringValueObject trimRight() => StringValueObject(value.trimRight());

  StringValueObject operator *(int times) => StringValueObject(value * times);

  StringValueObject padLeft(int width, [String padding = ' ']) =>
      StringValueObject(value.padLeft(width, padding));

  StringValueObject padRight(int width, [String padding = ' ']) =>
      StringValueObject(value.padRight(width, padding));

  bool contains(Pattern other, [int startIndex = 0]) =>
      value.contains(other, startIndex);

  StringValueObject replaceFirst(
    Pattern from,
    String to, [
    int startIndex = 0,
  ]) =>
      StringValueObject(value.replaceFirst(from, to, startIndex));

  StringValueObject replaceFirstMapped(
    Pattern from,
    String Function(Match match) replace, [
    int startIndex = 0,
  ]) =>
      StringValueObject(value.replaceFirstMapped(from, replace, startIndex));

  StringValueObject replaceAll(Pattern from, String replace) =>
      StringValueObject(value.replaceAll(from, replace));

  StringValueObject replaceAllMapped(
    Pattern from,
    String Function(Match match) replace,
  ) =>
      StringValueObject(value.replaceAllMapped(from, replace));

  StringValueObject replaceRange(int start, int? end, String replacement) =>
      StringValueObject(value.replaceRange(start, end, replacement));

  List<String> split(Pattern pattern) => value.split(pattern);

  String splitMapJoin(
    Pattern pattern, {
    String Function(Match)? onMatch,
    String Function(String)? onNonMatch,
  }) =>
      value.splitMapJoin(pattern, onMatch: onMatch, onNonMatch: onNonMatch);

  List<int> get codeUnits => value.codeUnits;

  Runes get runes => value.runes;

  StringValueObject toLowerCase() => StringValueObject(value.toLowerCase());

  StringValueObject toUpperCase() => StringValueObject(value.toUpperCase());
}
