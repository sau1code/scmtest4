import 'package:flutter/foundation.dart';

class TextModel extends ChangeNotifier {
  var _input = '';
  var _isApproval = false;

  get input => _input;
  get isApproval => _isApproval;

  setInputAndNotify(var input) {
    _input = input;
    _isApproval = (input == '123')
        ? true
        : false;
    notifyListeners();
  }
}