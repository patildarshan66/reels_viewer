import 'package:intl/intl.dart';

class NumbersToShort{
  static String convertNumToShort(int number){
    if(number==0){
      return '0';
    }
    return NumberFormat.compactCurrency(
      decimalDigits: 2,
      symbol: '',
    ).format(number).replaceAll('.00', '');
  }
}