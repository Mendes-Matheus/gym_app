class TPricingCalculator {
  // Calculate pricing based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    // return "R\$ ${shippingCost.toStringAsFixed(2)}";
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    // return "R\$ ${taxAmount.toStringAsFixed(2)}";
    return taxAmount.toStringAsFixed(2);
  }

  static String calculateTotalAmount(double productPrice, String location) {
    double totalPrice = calculateTotalPrice(productPrice, location);
    // return "R\$ ${totalPrice.toStringAsFixed(2)}";
    return totalPrice.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the given location from a tax rate database or API
    // Return the appropriate tax rate
    return 0.1;
  }

  static double getShippingCost(String location) {
    // Lookup the shipping cost for the given location from a tax rate database or API
    // Return the appropriate tax rate
    return 0.0;
  }

  /// -- Sum all cart values and return total amount
  // static double calculateTotalCartAmount(CardModel cart) {
  //   return cart.e.map((e) => e.price).fold(0,
  //       (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
