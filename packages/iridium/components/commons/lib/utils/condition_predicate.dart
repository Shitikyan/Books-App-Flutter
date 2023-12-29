import 'package:mno_commons/utils/condition_type.dart';

class ConditionPredicate {
  final ConditionType type;
  final String field;
  final Object value;

  static String fullTextField = "keywords";

  ConditionPredicate(this.type, this.field, this.value);

  bool get isFullTextField => field == fullTextField;

  bool get mustSplit {
    if (type.maxListItems == 1) {
      return false;
    }
    return (value is Iterable) &&
        (value as Iterable).length > type.maxListItems;
  }

  String get orderByField => isFullTextField ? "title" : field;

  @override
  String toString() =>
      'ConditionPredicate{type: $type, field: $field, value: $value}';
}
