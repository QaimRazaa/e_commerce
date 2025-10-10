class PricingCalculator {
  static double calculateTotalPrice({
    required double basePrice,
    required double taxRate,
    required double shippingCost,
  }) {
    final taxAmount = basePrice * taxRate;
    return basePrice + taxAmount + shippingCost;
  }

  static double calculateTax({
    required double basePrice,
    required double taxRate,
  }) {
    return basePrice * taxRate;
  }

  static double calculateShippingCost({
    required double distanceKm,
    double baseRate = 100,
    double ratePerKm = 20,
  }) {
    return baseRate + (distanceKm * ratePerKm);
  }

  static double getTaxRateForLocation(String location) {
    switch (location.toLowerCase()) {
      case 'lahore':
        return 0.05;
      case 'karachi':
        return 0.06;
      case 'islamabad':
        return 0.07;
      default:
        return 0.05;
    }
  }
}
