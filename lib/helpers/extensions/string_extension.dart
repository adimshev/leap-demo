import 'package:leap_demo/constants/regexp.dart';

String _toPriceReplace(Match match) {
  final group = match.group(1);

  return group == null ? '' : '$group ';
}

extension StringExtension on String {
  String toPrice([String? unit = '₽']) {
    final price = replaceAllMapped(priceRegExp, _toPriceReplace);

    return unit != null ? '$price $unit' : price;
  }
}
