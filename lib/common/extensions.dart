extension DoubleFormatIntl on double {
  String formatToIntl() {
    final priceStr = toInt().toString();
    final buffer = StringBuffer();
    int len = priceStr.length;
    for (int i = 0; i < len; i++) {
      buffer.write(priceStr[i]);
      if (i == len - 3 && len > 3) buffer.write(',');
      if (i == len - 5 && len > 5) buffer.write(',');
    }
    return '₹ $buffer';
  }
}
