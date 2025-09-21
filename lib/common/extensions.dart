extension DoubleFormatIntl on double {
  String formatToIntl() {
    String priceStr = toInt().toString();
    int len = priceStr.length;

    if (len <= 3) return '₹ $priceStr';

    // Take last 3 digits
    String last3 = priceStr.substring(len - 3);
    String rest = priceStr.substring(0, len - 3);

    // Insert commas every 2 digits in rest
    final buffer = StringBuffer();
    for (int i = 0; i < rest.length; i++) {
      if (i > 0 && (rest.length - i) % 2 == 0) {
        buffer.write(',');
      }
      buffer.write(rest[i]);
    }

    return '₹ ${buffer.toString()},$last3';
  }
}
