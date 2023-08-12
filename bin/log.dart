/*
  example: 
  class_math_log_operation.math_log(
    class_math_log_operation.math_log_operation.math_log_ERROR,
    "main()",
    "hello"
    );
*/

enum _math_log_operation {
  math_log_ERROR,
  math_log_WARNG,
  math_log_FATAL;
}

class class_math_log_operation_container {
  _math_log_operation get math_log_ERROR => _math_log_operation.math_log_ERROR;
  _math_log_operation get math_log_WARNG => _math_log_operation.math_log_WARNG;
  _math_log_operation get math_log_FATAL => _math_log_operation.math_log_FATAL;
}

class class_math_log_operation {
  static class_math_log_operation_container class_math_log_operation_containerInstance = class_math_log_operation_container();
  static class_math_log_operation_container get math_log_operation => class_math_log_operation_containerInstance;

  static String _math_log_get_value(_math_log_operation _log) {
    switch (_log) {
      case _math_log_operation.math_log_ERROR:
        return "ERROR";
      case _math_log_operation.math_log_WARNG:
        return "WARNG";
      case _math_log_operation.math_log_FATAL:
        return "FATAL";
      default:
        return "FATAL";
    }
  }

  // log message
  static void math_log(_math_log_operation _type, var _void, var _message) {
    var _math_log_type = _math_log_get_value(_type);

    print("[${_math_log_type}] ${_void}: ${_message}");
  }
}