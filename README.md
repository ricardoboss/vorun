A library for creating and managing runtime-validated value objects in Dart.

Turn your primitives (ints, decimals etc.) into Value Objects that represent domain concepts
(CustomerId, AccountBalance etc).

## Features

- Provides a base class `ValueObject<T>` for all value objects and more refined types like `NumValueObject<T extends num>`

## Getting started

Install it using:

```shell
dart pub add vorun
```

or for Flutter:

```shell
flutter pub add vorun
```

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

If you find any issues or experience problems using it, please report them here on [GitHub issues].

Missing features? Open a PR!

## Other works

[vorun] was inspired by [Vogen], a C# Value Object library.

There also exists [valid_value_objects], which does something similar and provides some
opinionated, commonly used value objects.

[vorun]: https://github.com/ricardoboss/vorun
[Vogen]: https://github.com/SteveDunn/Vogen
[GitHub issues]: https://github.com/ricardoboss/vorun/issues
[valid_value_objects]: https://gitlab.com/Patesz/valid-value-objects
