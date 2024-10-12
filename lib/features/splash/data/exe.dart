extension NumberOperations on num {
  num doubleValue() {
    return this * 2;
  }

  num toPower(int exponent) {
    return this * exponent;
  }

  num addTax(double taxRate) {
    return this + (this * taxRate / 100);
  }
}

void main() {
  num price = 100;

  print("Original Price: $price");
  print("Double Value: ${price.doubleValue()}");
  print("Price to Power 3: ${price.toPower(3)}");
  print("Price with 15% Tax: ${price.addTax(15)}");
}
