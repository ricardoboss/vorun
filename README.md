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

Create your value objects (choose the appropriate base classes):

```dart
import 'package:vorun/vorun.dart';

class AccountId extends IntValueObject {
  const AccountId(super.value);
}

class RoleId extends IntValueObject {
  const RoleId(super.value);
}
```

And then you can use instances of these objects to have type safety beyond primitives:

```dart
const someAccountId = AccountId(123);
sendWelcomeMail(someAccountId);

void sendWelcomeMail(AccountId accountId) { /*...*/ }

const someRoleId = RoleId(123);
sendWelcomeMail(someRoleId); // Oops! Compile error
```

The included bases classes (`DoubleValueObject`, `IntValueObject` and `StringValueObject`) provide
solid bases for your business logic. They expose _most_ functions of the values they are wrapping:

```dart
import 'package:vorun/vorun.dart';

class InvoiceItemPrice extends DoubleValueObject {
  const InvoiceItemPrice(super.value);
}

class InvoiceSum extends DoubleValueObject {
  const InvoiceSum._(super.value);

  factory InvoiceSum.fromItems(Iterable<InvoiceItemPrice> items) {
    var sum = 0.0;
    for (var item in items) {
      sum += item.value;
    }

    return InvoiceSum._(sum);
  }
}

main() {
  var someItemPrice = InvoiceItemPrice(123.456);
  var anotherItemPrice = InvoiceItemPrice(456.123);

  // use operators
  var sum = someItemPrice + anotherItemPrice;

  print(sum); // 579.579

  // or another value object for added type safety!
  var invoiceSum = InvoiceSum.fromItems([someItemPrice, anotherItemPrice]);

  print(invoiceSum); // InvoiceSum(579.579)
}
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
