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
