part of "main.dart";

enum _math_func_operation {
  math_func_ADD, // +
  math_func_SUB, // -
  math_func_MUL, // *
  math_func_DIV, // /
  math_func_POW, // ^
  math_func_LPAR, // (
  math_func_RPAR, // )
  math_func_VALUE // "..."
}

class class_math_func_operation_container {
  _math_func_operation get math_func_ADD => _math_func_operation.math_func_ADD;
  _math_func_operation get math_func_SUB => _math_func_operation.math_func_SUB;
  _math_func_operation get math_func_MUL => _math_func_operation.math_func_MUL;
  _math_func_operation get math_func_DIV => _math_func_operation.math_func_DIV;
  _math_func_operation get math_func_POW => _math_func_operation.math_func_POW;
  _math_func_operation get math_func_LPAR =>
      _math_func_operation.math_func_LPAR;
  _math_func_operation get math_func_RPAR =>
      _math_func_operation.math_func_RPAR;
  _math_func_operation get math_func_VALUE =>
      _math_func_operation.math_func_VALUE;
}

late List<String> math_func_text_list = [];
late List<String> math_func_text_result = [];

// if have (...)
late List<String> math_func_text_LR_par_priority = [];
late List<String> math_func_text_LR_par_remainder = [];
late List<String> math_func_text_LR_par_intermediate = [];
late bool bool_LR_start_line = false;
late bool bool_LR_end_line = false;

class class_math_func_LR_par {
  // ----------- math func ---------
  // *
  static void math_func_subsequence_LR_par_MUL(List<String> _list_LR_par) {
    int _operation_ok = 0;
    for (int i = 0; i < _list_LR_par.length; i++) {
      // find *
      if (_list_LR_par[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_MUL)) {
        _operation_ok = 1;
      }
    }
    if (_operation_ok != 0)
      for (int i = 0; i < _list_LR_par.length; i++) {
        // find *
        if (_list_LR_par[i] ==
            class_math_func_operation._math_func_get_value(
                class_math_func_operation
                    .class_math_func_operation_containerInstance
                    .math_func_MUL)) {
          math_func_text_LR_par_intermediate.add(class_math_func
              ._math_func_MUL(double.parse(_list_LR_par[i - 1]),
                  double.parse(_list_LR_par[i + 1]))
              .toString());
        } else if (i + 1 != _list_LR_par.length && i - 1 != -1) {
          if (
              // *
              (_list_LR_par[i + 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_MUL) &&
                  _list_LR_par[i - 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_MUL)))
            math_func_text_LR_par_intermediate.add(_list_LR_par[i]);
        } else
          math_func_text_LR_par_intermediate.add(_list_LR_par[i]);
      }
    if (math_func_text_LR_par_intermediate.length != 0) show_steps_LR_par();
  }

  // /
  static void math_func_subsequence_LR_par_DIV(List<String> _list_LR_par) {
    int _operation_ok = 0;
    for (int i = 0; i < _list_LR_par.length; i++) {
      // find /
      if (_list_LR_par[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_DIV)) {
        _operation_ok = 1;
      }
    }
    if (_operation_ok != 0)
      for (int i = 0; i < _list_LR_par.length; i++) {
        // find /
        if (_list_LR_par[i] ==
            class_math_func_operation._math_func_get_value(
                class_math_func_operation
                    .class_math_func_operation_containerInstance
                    .math_func_DIV)) {
          math_func_text_LR_par_intermediate.add(class_math_func
              ._math_func_DIV(double.parse(_list_LR_par[i - 1]),
                  double.parse(_list_LR_par[i + 1]))
              .toString());
        } else if (i + 1 != _list_LR_par.length && i - 1 != -1) {
          if ((_list_LR_par[i + 1] !=
                  class_math_func_operation._math_func_get_value(
                      class_math_func_operation
                          .class_math_func_operation_containerInstance
                          .math_func_DIV) &&
              _list_LR_par[i - 1] !=
                  class_math_func_operation._math_func_get_value(
                      class_math_func_operation
                          .class_math_func_operation_containerInstance
                          .math_func_DIV)))
            math_func_text_LR_par_intermediate.add(_list_LR_par[i]);
        } else
          math_func_text_LR_par_intermediate.add(_list_LR_par[i]);
      }
    if (math_func_text_LR_par_intermediate.length != 0) show_steps_LR_par();
  }

  // ^
  static void math_func_subsequence_LR_par_POW(List<String> _list_LR_par) {
    int _operation_ok = 0;
    for (int i = 0; i < _list_LR_par.length; i++) {
      // find ^
      if (_list_LR_par[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_POW)) {
        _operation_ok = 1;
      }
    }
    if (_operation_ok != 0)
      for (int i = 0; i < _list_LR_par.length; i++) {
        // find ^
        if (_list_LR_par[i] ==
            class_math_func_operation._math_func_get_value(
                class_math_func_operation
                    .class_math_func_operation_containerInstance
                    .math_func_POW)) {
          math_func_text_LR_par_intermediate.add(class_math_func
              ._math_func_POW(double.parse(_list_LR_par[i - 1]),
                  double.parse(_list_LR_par[i + 1]))
              .toString());
        } else if (i + 1 != _list_LR_par.length) {
          if (
              // ^
              (_list_LR_par[i + 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_POW) &&
                  _list_LR_par[i - 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_POW)))
            math_func_text_LR_par_intermediate.add(_list_LR_par[i]);
        } else
          math_func_text_LR_par_intermediate.add(_list_LR_par[i]);
      }

    if (math_func_text_LR_par_intermediate.length != 0) show_steps_LR_par();
  }

  // +
  static void math_func_subsequence_LR_par_ADD(List<String> _list_LR_par) {
    int _operation_ok = 0;
    for (int i = 0; i < _list_LR_par.length; i++) {
      // find +
      if (_list_LR_par[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_ADD)) {
        _operation_ok = 1;
      }
    }
    if (_operation_ok != 0)
      for (int i = 0; i < _list_LR_par.length; i++) {
        // find +
        if (_list_LR_par[i] ==
            class_math_func_operation._math_func_get_value(
                class_math_func_operation
                    .class_math_func_operation_containerInstance
                    .math_func_ADD)) {
          math_func_text_LR_par_intermediate.add(class_math_func
              ._math_func_ADD(double.parse(_list_LR_par[i - 1]),
                  double.parse(_list_LR_par[i + 1]))
              .toString());
        } else if (i + 1 != _list_LR_par.length && i - 1 != -1) {
          if (
              // +
              (_list_LR_par[i + 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_ADD) &&
                  _list_LR_par[i - 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_ADD)))
            math_func_text_LR_par_intermediate.add(_list_LR_par[i]);
        } else
          math_func_text_LR_par_intermediate.add(_list_LR_par[i]);
      }
    if (math_func_text_LR_par_intermediate.length != 0) show_steps_LR_par();
  }

  // -
  static void math_func_subsequence_LR_par_SUB(List<String> _list_LR_par) {
    int _operation_ok = 0;
    for (int i = 0; i < _list_LR_par.length; i++) {
      // find +
      if (_list_LR_par[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_SUB)) {
        _operation_ok = 1;
      }
    }
    if (_operation_ok != 0)
      for (int i = 0; i < _list_LR_par.length; i++) {
        // find +
        if (_list_LR_par[i] ==
            class_math_func_operation._math_func_get_value(
                class_math_func_operation
                    .class_math_func_operation_containerInstance
                    .math_func_SUB)) {
          math_func_text_LR_par_intermediate.add(class_math_func
              ._math_func_SUB(double.parse(_list_LR_par[i - 1]),
                  double.parse(_list_LR_par[i + 1]))
              .toString());
          //break;
        } else if (i + 1 != _list_LR_par.length && i - 1 != -1) {
          if (
              // -
              (_list_LR_par[i + 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_SUB) &&
                  _list_LR_par[i - 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_SUB)))
            math_func_text_LR_par_intermediate.add(_list_LR_par[i]);
        } else {}

      }
    if (math_func_text_LR_par_intermediate.length != 0) show_steps_LR_par();
  }

  // show
  static void show_steps_LR_par() {
    _steps++;
    // print("STEP ${_steps}: ${math_func_text_list}");
    math_func_text_list.removeRange(0, math_func_text_list.length); // clear
    // print("components: ${math_func_text_list}");
    // print("components  priority: ${math_func_text_LR_par_priority}");
    // print("components remainder: ${math_func_text_LR_par_remainder}");
    // print("components intermediate: ${math_func_text_LR_par_intermediate}");
    // print("components result: ${math_func_text_result}");

    _replace_result_list_LR_par();

    // if (math_func_text_LR_par_priority.length > 2)
    //   // print
    //       "start from STEP ${_steps + 1} components: ${math_func_text_LR_par_priority}");
    // else
    //  // print("result : ${math_func_text_LR_par_priority}");
  }

  static void _replace_result_list_LR_par() {
    for (int i = 0; i < math_func_text_LR_par_priority.length; i++)
      math_func_text_LR_par_intermediate.add(math_func_text_LR_par_priority[i]);

    math_func_text_LR_par_priority.removeRange(
        0, math_func_text_LR_par_priority.length); // clear

    for (int i = 0; i < math_func_text_LR_par_intermediate.length; i++)
      math_func_text_LR_par_priority.add(math_func_text_LR_par_intermediate[i]);

    math_func_text_LR_par_intermediate.removeRange(
        0, math_func_text_LR_par_intermediate.length); // clear
  }

  static void _delete_result_list_LR_par() {
    for (int i = 1; i < math_func_text_LR_par_priority.length - 1; i++)
      math_func_text_LR_par_intermediate.add(math_func_text_LR_par_priority[i]);

    math_func_text_LR_par_priority.removeRange(
        0, math_func_text_LR_par_priority.length); // clear

    for (int i = 0; i < math_func_text_LR_par_intermediate.length; i++)
      math_func_text_LR_par_priority.add(math_func_text_LR_par_intermediate[i]);

    math_func_text_LR_par_intermediate.removeRange(
        0, math_func_text_LR_par_intermediate.length); // clear
  }

  //  ------ mains ------

  // func: ... ()
  static void math_func_subsequence_LR_par_priority_start_line() {
    for (int i = 0; i < math_func_text_list.length; i++) {
      if (math_func_text_list[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance
                  .math_func_LPAR)) {
        while (true) {
          if (math_func_text_list[i] ==
              class_math_func_operation._math_func_get_value(
                  class_math_func_operation
                      .class_math_func_operation_containerInstance
                      .math_func_RPAR)) {
            math_func_text_LR_par_priority.add(math_func_text_list[i]);
            break;
          }

          math_func_text_LR_par_priority.add(math_func_text_list[i]);
          i++;
        }
      }
    }

    for (int i = 0;
        i < math_func_text_list.length - math_func_text_LR_par_priority.length;
        i++) {
      math_func_text_LR_par_remainder.add(math_func_text_list[i]);
    }
    _delete_result_list_LR_par(); // delete ()
    show_steps_LR_par();

    math_func_subsequence_LR_par_POW(math_func_text_LR_par_priority); // ^
    math_func_subsequence_LR_par_DIV(math_func_text_LR_par_priority); // /
    math_func_subsequence_LR_par_MUL(math_func_text_LR_par_priority); // *
    math_func_subsequence_LR_par_ADD(math_func_text_LR_par_priority);
    math_func_subsequence_LR_par_SUB(math_func_text_LR_par_priority);

    math_func_text_LR_par_intermediate.removeRange(
        0, math_func_text_LR_par_intermediate.length); // clear

    for (int i = 1; i < 2; i++)
      math_func_text_LR_par_intermediate.add(math_func_text_LR_par_priority[i]);

    // print
    //    " **** components intermediate: ${math_func_text_LR_par_intermediate}");

    for (int i = 0; i < math_func_text_LR_par_remainder.length; i++)
      math_func_text_list.add(math_func_text_LR_par_remainder[i]);
    for (int i = 0; i < math_func_text_LR_par_intermediate.length; i++)
      math_func_text_list.add(math_func_text_LR_par_intermediate[i]);
    // print(" **** components: ${math_func_text_list}");
  }

  // func: () ...
  static void math_func_subsequence_LR_par_priority_end_line() {
    for (int i = 0; i < math_func_text_list.length; i++) {
      if (math_func_text_list[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance
                  .math_func_LPAR)) {
        while (true) {
          if (math_func_text_list[i] ==
              class_math_func_operation._math_func_get_value(
                  class_math_func_operation
                      .class_math_func_operation_containerInstance
                      .math_func_RPAR)) {
            math_func_text_LR_par_priority.add(math_func_text_list[i]);
            break;
          }

          math_func_text_LR_par_priority.add(math_func_text_list[i]);
          i++;
        }
      }
      break;
    }

    for (int i = math_func_text_LR_par_priority.length;
        i < math_func_text_list.length;
        i++) {
      math_func_text_LR_par_remainder.add(math_func_text_list[i]);
    }
    _delete_result_list_LR_par(); // delete ()
    show_steps_LR_par();

    math_func_subsequence_LR_par_POW(math_func_text_LR_par_priority); // ^
    math_func_subsequence_LR_par_DIV(math_func_text_LR_par_priority); // /
    math_func_subsequence_LR_par_MUL(math_func_text_LR_par_priority); // *
    math_func_subsequence_LR_par_ADD(math_func_text_LR_par_priority);
    math_func_subsequence_LR_par_SUB(math_func_text_LR_par_priority);

    math_func_text_LR_par_intermediate.removeRange(
        0, math_func_text_LR_par_intermediate.length); // clear

    for (int i = 0; i < 1; i++)
      math_func_text_LR_par_intermediate.add(math_func_text_LR_par_priority[i]);

    // print
    //    " **** components intermediate: ${math_func_text_LR_par_intermediate}");

    for (int i = 0; i < math_func_text_LR_par_intermediate.length; i++)
      math_func_text_list.add(math_func_text_LR_par_intermediate[i]);
    for (int i = 0; i < math_func_text_LR_par_remainder.length; i++)
      math_func_text_list.add(math_func_text_LR_par_remainder[i]);
    // print(" **** components: ${math_func_text_list}");
  }

  // if have (...)
  static void math_func_subsequence_LR_par_priority() {
    // check location L R par
    for (int i = 0; i < math_func_text_list.length; i++) {
      if (i + 1 != math_func_text_list.length && i - 1 != -1) {
        // if R == */^ else  bool_LR_end_line = true
        if ((math_func_text_list[i + 1] ==
                    class_math_func_operation._math_func_get_value(class_math_func_operation
                        .class_math_func_operation_containerInstance
                        .math_func_SUB) ||
                math_func_text_list[i + 1] ==
                    class_math_func_operation._math_func_get_value(class_math_func_operation
                        .class_math_func_operation_containerInstance
                        .math_func_DIV) ||
                math_func_text_list[i + 1] ==
                    class_math_func_operation._math_func_get_value(class_math_func_operation
                        .class_math_func_operation_containerInstance
                        .math_func_POW)) &&
            math_func_text_list[i] ==
                class_math_func_operation._math_func_get_value(
                    class_math_func_operation.class_math_func_operation_containerInstance.math_func_RPAR))
          bool_LR_end_line = true;
        if ((math_func_text_list[i - 1] ==
                    class_math_func_operation._math_func_get_value(class_math_func_operation
                        .class_math_func_operation_containerInstance
                        .math_func_SUB) ||
                math_func_text_list[i - 1] ==
                    class_math_func_operation._math_func_get_value(class_math_func_operation
                        .class_math_func_operation_containerInstance
                        .math_func_DIV) ||
                math_func_text_list[i - 1] ==
                    class_math_func_operation._math_func_get_value(class_math_func_operation
                        .class_math_func_operation_containerInstance
                        .math_func_POW)) &&
            math_func_text_list[i] ==
                class_math_func_operation._math_func_get_value(
                    class_math_func_operation.class_math_func_operation_containerInstance.math_func_LPAR))
          bool_LR_start_line = true;
      }
    }
    // print("---------");
    // print("R == */^ : ${bool_LR_end_line}");
    // print("L == */^ : ${bool_LR_start_line}");
    // print("---------");
    if (bool_LR_start_line == true && bool_LR_end_line == true) {
      class_math_log_operation.math_log(
        class_math_log_operation.math_log_operation.math_log_FATAL,
        "math/class_math_func_LR_par.math_func_subsequence_LR_par_priority()",
        "using a single parenthesis in a function (please...)");
      exit(ERROR_STATUS);
    }
      
    if (bool_LR_start_line == true)
      math_func_subsequence_LR_par_priority_start_line();
    if (bool_LR_end_line == true)
      math_func_subsequence_LR_par_priority_end_line();

    bool_LR_end_line = false;
    bool_LR_start_line = false;
  }
}

// STEPS
int _steps = 0;

// show
void show_steps() {
  _steps++;
  // print("STEP ${_steps}: ${math_func_text_list}");
  math_func_text_list.removeRange(0, math_func_text_list.length); // clear
  // print("components: ${math_func_text_list}");
  // print("components result: ${math_func_text_result}");

  _replace_result_list();

  // if (math_func_text_result.length > 2)
  //   // print("start from STEP ${_steps + 1} components: ${math_func_text_list}");
  // else
  //   // print("result : ${math_func_text_list}");
}

void _replace_result_list() {
  if (math_func_text_result.length > 2)
    for (int i = 0; i < math_func_text_result.length; i++)
      math_func_text_list.add(math_func_text_result[i]);
  else
    math_func_text_list.add(math_func_text_result[0]);

  math_func_text_result.removeRange(0, math_func_text_result.length); // clear
}

class class_math_func_operation {
  static class_math_func_operation_container
      class_math_func_operation_containerInstance =
      class_math_func_operation_container();
  static class_math_func_operation_container get math_func_operation =>
      class_math_func_operation_containerInstance;

  static String _math_func_get_value(_math_func_operation _func) {
    switch (_func) {
      case _math_func_operation.math_func_ADD:
        return "+";
      case _math_func_operation.math_func_SUB:
        return "-";
      case _math_func_operation.math_func_MUL:
        return "*";
      case _math_func_operation.math_func_DIV:
        return "/";
      case _math_func_operation.math_func_POW:
        return "^";
      case _math_func_operation.math_func_LPAR:
        return "(";
      case _math_func_operation.math_func_RPAR:
        return ")";
      default:
        return "";
    }
  }

  // ----------- math func ---------
  // *
  static void math_func_subsequence_MUL() {
    int _operation_ok = 0;
    for (int i = 0; i < math_func_text_list.length; i++) {
      // find *
      if (math_func_text_list[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_MUL)) {
        _operation_ok = 1;
      }
    }
    if (_operation_ok != 0)
      for (int i = 0; i < math_func_text_list.length; i++) {
        // find *
        if (math_func_text_list[i] ==
            class_math_func_operation._math_func_get_value(
                class_math_func_operation
                    .class_math_func_operation_containerInstance
                    .math_func_MUL)) {
          math_func_text_result.add(class_math_func
              ._math_func_MUL(double.parse(math_func_text_list[i - 1]),
                  double.parse(math_func_text_list[i + 1]))
              .toString());
        } else if (i + 1 != math_func_text_list.length && i - 1 != -1) {
          if (
              // *
              (math_func_text_list[i + 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_MUL) &&
                  math_func_text_list[i - 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_MUL)))
            math_func_text_result.add(math_func_text_list[i]);
        } else
          math_func_text_result.add(math_func_text_list[i]);
      }
    if (math_func_text_result.length != 0) show_steps();
  }

  // /
  static void math_func_subsequence_DIV() {
    int _operation_ok = 0;
    for (int i = 0; i < math_func_text_list.length; i++) {
      // find /
      if (math_func_text_list[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_DIV)) {
        _operation_ok = 1;
      }
    }
    if (_operation_ok != 0)
      for (int i = 0; i < math_func_text_list.length; i++) {
        // find /
        if (math_func_text_list[i] ==
            class_math_func_operation._math_func_get_value(
                class_math_func_operation
                    .class_math_func_operation_containerInstance
                    .math_func_DIV)) {
          math_func_text_result.add(class_math_func
              ._math_func_DIV(double.parse(math_func_text_list[i - 1]),
                  double.parse(math_func_text_list[i + 1]))
              .toString());
        } else if (i + 1 != math_func_text_list.length && i - 1 != -1) {
          if ((math_func_text_list[i + 1] !=
                  class_math_func_operation._math_func_get_value(
                      class_math_func_operation
                          .class_math_func_operation_containerInstance
                          .math_func_DIV) &&
              math_func_text_list[i - 1] !=
                  class_math_func_operation._math_func_get_value(
                      class_math_func_operation
                          .class_math_func_operation_containerInstance
                          .math_func_DIV)))
            math_func_text_result.add(math_func_text_list[i]);
        } else
          math_func_text_result.add(math_func_text_list[i]);
      }
    if (math_func_text_result.length != 0) show_steps();
  }

  // ^
  static void math_func_subsequence_POW() {
    int _operation_ok = 0;
    for (int i = 0; i < math_func_text_list.length; i++) {
      // find ^
      if (math_func_text_list[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_POW)) {
        _operation_ok = 1;
      }
    }
    if (_operation_ok != 0)
      for (int i = 0; i < math_func_text_list.length; i++) {
        // find ^
        if (math_func_text_list[i] ==
            class_math_func_operation._math_func_get_value(
                class_math_func_operation
                    .class_math_func_operation_containerInstance
                    .math_func_POW)) {
          math_func_text_result.add(class_math_func
              ._math_func_POW(double.parse(math_func_text_list[i - 1]),
                  double.parse(math_func_text_list[i + 1]))
              .toString());
        } else if (i + 1 != math_func_text_list.length) {
          if (
              // ^
              (math_func_text_list[i + 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_POW) &&
                  math_func_text_list[i - 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_POW)))
            math_func_text_result.add(math_func_text_list[i]);
        } else
          math_func_text_result.add(math_func_text_list[i]);
      }

    if (math_func_text_result.length != 0) show_steps();
  }

  // ()
  static void math_func_subsequence_LR() {
    for (int i = 0; i < math_func_text_list.length; i++) {
      // find ( )
      if (math_func_text_list[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance
                  .math_func_LPAR)) {
        class_math_func_LR_par.math_func_subsequence_LR_par_priority();
      }
    }
    if (math_func_text_result.length != 0) show_steps();
  }

  // +
  static void math_func_subsequence_ADD() {
    int _operation_ok = 0;
    for (int i = 0; i < math_func_text_list.length; i++) {
      // find +
      if (math_func_text_list[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_ADD)) {
        _operation_ok = 1;
      }
    }
    if (_operation_ok != 0)
      for (int i = 0; i < math_func_text_list.length; i++) {
        // find +
        if (math_func_text_list[i] ==
            class_math_func_operation._math_func_get_value(
                class_math_func_operation
                    .class_math_func_operation_containerInstance
                    .math_func_ADD)) {
          math_func_text_result.add(class_math_func
              ._math_func_ADD(double.parse(math_func_text_list[i - 1]),
                  double.parse(math_func_text_list[i + 1]))
              .toString());
        } else if (i + 1 != math_func_text_list.length && i - 1 != -1) {
          if (
              // +
              (math_func_text_list[i + 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_ADD) &&
                  math_func_text_list[i - 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_ADD)))
            math_func_text_result.add(math_func_text_list[i]);
        } else
          math_func_text_result.add(math_func_text_list[i]);
      }
    if (math_func_text_result.length != 0) show_steps();
  }

  // -
  static void math_func_subsequence_SUB() {
    int _operation_ok = 0;
    for (int i = 0; i < math_func_text_list.length; i++) {
      // find +
      if (math_func_text_list[i] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_SUB)) {
        _operation_ok = 1;
      }
    }
    if (_operation_ok != 0)
      for (int i = 0; i < math_func_text_list.length; i++) {
        // find +
        if (math_func_text_list[i] ==
            class_math_func_operation._math_func_get_value(
                class_math_func_operation
                    .class_math_func_operation_containerInstance
                    .math_func_SUB)) {
          math_func_text_result.add(class_math_func
              ._math_func_SUB(double.parse(math_func_text_list[i - 1]),
                  double.parse(math_func_text_list[i + 1]))
              .toString());
          //break;
        } else if (i + 1 != math_func_text_list.length && i - 1 != -1) {
          if (
              // -
              (math_func_text_list[i + 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_SUB) &&
                  math_func_text_list[i - 1] !=
                      class_math_func_operation._math_func_get_value(
                          class_math_func_operation
                              .class_math_func_operation_containerInstance
                              .math_func_SUB)))
            math_func_text_result.add(math_func_text_list[i]);
        } else
          math_func_text_result.add(math_func_text_list[i]);
      }

    if (math_func_text_result.length != 0) show_steps();
  }

  // ----------- main math func ---------

  static void math_func_subsequence() {
    if (math_func_text_list.length == 3) {
      if ((math_func_text_list[1] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_POW)))
        math_func_text_result.add(class_math_func
            ._math_func_POW(double.parse(math_func_text_list[0]),
                double.parse(math_func_text_list[2]))
            .toString());
      if ((math_func_text_list[1] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_ADD)))
        math_func_text_result.add(class_math_func
            ._math_func_ADD(double.parse(math_func_text_list[0]),
                double.parse(math_func_text_list[2]))
            .toString());
      if ((math_func_text_list[1] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_DIV)))
        math_func_text_result.add(class_math_func
            ._math_func_DIV(double.parse(math_func_text_list[0]),
                double.parse(math_func_text_list[2]))
            .toString());
      if (math_func_text_list[1] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_MUL))
        math_func_text_result.add(class_math_func
            ._math_func_MUL(double.parse(math_func_text_list[0]),
                double.parse(math_func_text_list[2]))
            .toString());
      if (math_func_text_list[1] ==
          class_math_func_operation._math_func_get_value(
              class_math_func_operation
                  .class_math_func_operation_containerInstance.math_func_SUB))
        math_func_text_result.add(class_math_func
            ._math_func_SUB(double.parse(math_func_text_list[0]),
                double.parse(math_func_text_list[2]))
            .toString());
    } else {
      math_func_subsequence_LR(); // ()
      math_func_subsequence_POW(); // ^
      math_func_subsequence_DIV(); // /
      math_func_subsequence_MUL(); // *
      math_func_subsequence_ADD();
      math_func_subsequence_SUB();
    }

    // print(" ##### ${math_func_text_list[1]}");

    if (math_func_text_result.length == 1) {
      math_func_text_list.removeRange(0, math_func_text_list.length); // clear
      math_func_text_list.add(math_func_text_result[0]);
    }

    if (math_func_text_result.length > 0)
      math_func_text_result.removeRange(
          0, math_func_text_result.length); // clear

    if (math_func_text_list.length > 1)
      math_func_text_result.add(math_func_text_list[1]);
    else
      math_func_text_result.add(math_func_text_list[0]);

    // print(" **** result : ${math_func_text_result} ****");
    math_func_final = double.parse(math_func_text_result[0].toString());

    if (math_func_text_list.length > 0)
      math_func_text_list.removeRange(0, math_func_text_list.length); // clear
    if (math_func_text_result.length > 0)
      math_func_text_result.removeRange(
          0, math_func_text_result.length); // clear
    if (math_func_text_LR_par_priority.length > 0)
      math_func_text_LR_par_priority.removeRange(
          0, math_func_text_LR_par_priority.length); // clear
    if (math_func_text_LR_par_remainder.length > 0)
      math_func_text_LR_par_remainder.removeRange(
          0, math_func_text_LR_par_remainder.length); // clear
    if (math_func_text_LR_par_intermediate.length > 0)
      math_func_text_LR_par_intermediate.removeRange(
          0, math_func_text_LR_par_intermediate.length); // clear
  }

  static void math_func_value_separation(var math_func_text) {
    math_func_text_list = math_func_text.split(' ');
    
    if (math_func_text_list.length == 0) {
      class_math_log_operation.math_log(
        class_math_log_operation.math_log_operation.math_log_FATAL,
        "math/class_math_func_operation.math_func_subsequence()",
        "error split elements");
      exit(ERROR_STATUS);
    }
    class_math_func_operation.math_func_subsequence();
  }
}

class class_math_func {
  static double _math_func_ADD(double x, double y) {
    return x + y;
  }

  static double _math_func_SUB(double x, double y) {
    return x - y;
  }

  static double _math_func_MUL(double x, double y) {
    return x * y;
  }

  static double _math_func_DIV(double x, double y) {
    return x / y;
  }

  static double _math_func_POW(double x, double y) {
    var i = pow(x, y); // x ^ y
    return i.toDouble();
  }
}
