import 'dart:io';
import 'dart:math';

import 'log.dart'; // log

part "math.dart";

final ERROR_STATUS = 0;
final SUCCESSFULLY_STATUS = 1;

late double math_func_final = 0.0;
final _SPACE = ' ';
final _X = 'x';
/*
x*5+4/2-1 (результат 51)
(x*3-5)/5 (результат 5)
3*x+15/(3+2) (результат 33)
*/

/*
  // var str = math_func_readLineSync();
  // var num = math_func_X_readLineSync();
  // 
String math_func_readLineSync() {
  stdout.write("Write a function: ");
  var func = stdin.readLineSync();
  return func.toString();
}

String math_func_X_readLineSync() {
  stdout.write("Write a function: ");
  var func = stdin.readLineSync();
  return func.toString();
}
*/

String math_func_replace_X_readLineSyn(var str, var num) {
  return str.replaceAll("x", num).toString();
}

void math_func_check_space_readLineSyn(var str) {
  if (!str.contains(_SPACE)) {
    class_math_log_operation.math_log(
        class_math_log_operation.math_log_operation.math_log_FATAL,
        "main/main()",
        "you need to use a space between elements");
    exit(ERROR_STATUS);
  }
}

void math_func_check_X_readLineSyn(var str) {
  if (!str.contains(_X)) {
    class_math_log_operation.math_log(
        class_math_log_operation.math_log_operation.math_log_FATAL,
        "main/main()",
        "you need to write a \"${_X}\" between elements");
    exit(ERROR_STATUS);
  }
}

int _rtest = 0;

void math_func_test(var func, var num, var result) {
  _rtest++;
  bool _btest = false;
  print(
      "[test # ${_rtest}] [func: ${func}] || [x: ${num}] || [pending result: ${double.parse(result.toString())}]");

  math_func_check_space_readLineSyn(func);
  math_func_check_X_readLineSyn(func);
  class_math_func_operation
      .math_func_value_separation(math_func_replace_X_readLineSyn(func, num));

  assert(
      double.parse(math_func_final.toString()) ==
          double.parse(result.toString()),
      _btest = true);

  (_btest == true) ? print("false") : print("ok");
  _btest = false; // clear
}

void main() {
  var num = "4";

  print("[my tests]");
  math_func_test("x * -5", num, "-20");
  math_func_test("x ^ 2", num, "16");
  math_func_test("x + -5", num, "-1");
  math_func_test("x - 2", num, "2");
  math_func_test("x / 2", num, "2");

  math_func_test("x * 10 / 2 + x * 8", "5", "65");

  print("[otus tests]");
  num = "10";
  math_func_test("x * 5 + 4 / 2 - 1", num, "51");
  math_func_test("( x * 3 - 5 ) / 5", num, "5");
  math_func_test("3 * x + 15 / ( 3 + 2 )", num, "33");

  print("-------");
  print("[result] all tests (${_rtest}) : ok");
  exit(SUCCESSFULLY_STATUS);
}
