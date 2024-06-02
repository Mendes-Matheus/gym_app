import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd/MM/yyyy").format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: "pt_BR", symbol: "R\$").format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 11) {
      return phoneNumber.replaceAllMapped(RegExp(r'(\d{2})(\d{4})(\d{4})'),
              (Match m) => '${m[1]} ${m[2]}-${m[3]}');
    }
    return phoneNumber.replaceAllMapped(RegExp(r'(\d{2})(\d{5})(\d{4})'),
            (Match m) => '${m[1]} ${m[2]}-${m[3]}');
  }

  // Not fully tested
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }

    return formattedNumber.toString();
  }

}
