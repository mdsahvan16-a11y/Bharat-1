class MilkPricingEngine {
  static double calculateFormulaRate({
    required double fat,
    required double snf,
    required double fatFactor,
    required double snfFactor,
    double baseAdjustment = 0.0,
  }) {
    if (fat <= 0 || snf <= 0) return 0.0;
    final rate = (fat * fatFactor) + (snf * snfFactor) + baseAdjustment;
    return double.parse(rate.toStringAsFixed(2));
  }

  static Map<String, double> calculateCollection({
    required double quantityLiters,
    required double appliedRate,
    double advanceDeduction = 0.0,
    double feedDeduction = 0.0,
    double otherDeduction = 0.0,
  }) {
    final gross = double.parse((quantityLiters * appliedRate).toStringAsFixed(2));
    final totalDeductions = double.parse((advanceDeduction + feedDeduction + otherDeduction).toStringAsFixed(2));
    final netPayable = double.parse((gross - totalDeductions).toStringAsFixed(2));

    return {
      'grossAmount': gross,
      'advanceDeduction': advanceDeduction,
      'feedDeduction': feedDeduction,
      'otherDeduction': otherDeduction,
      'totalDeductions': totalDeductions,
      'netPayable': netPayable,
    };
  }
}
