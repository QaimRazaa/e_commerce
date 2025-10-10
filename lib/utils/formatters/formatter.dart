import 'package:intl/intl.dart';

class Formatters {
  static String formatDate(DateTime date, {String pattern = 'dd/MM/yyyy'}) {
    try {
      return DateFormat(pattern).format(date);
    } catch (e) {
      return 'Invalid Date';
    }
  }

  static String formatCurrency(double amount, {String symbol = '₨'}) {
    final formatter = NumberFormat.currency(symbol: symbol, decimalDigits: 0);
    return formatter.format(amount);
  }

  static String formatPhone(String phone) {
    final cleaned = phone.replaceAll(RegExp(r'\D'), '');
    if (cleaned.length == 10) {
      return '${cleaned.substring(0, 4)}-${cleaned.substring(4, 7)}-${cleaned.substring(7)}';
    } else if (cleaned.length == 11) {
      return '${cleaned.substring(0, 4)}-${cleaned.substring(4, 8)}-${cleaned.substring(8)}';
    } else {
      return phone;
    }
  }
}
