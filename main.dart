import "dart:core";

final String TestCc = "test";
const String CcTest = "Cctest";
// main 函数程序的入口
void main() {
  print('Hello, World!');
  // assert 断言
  assert(int.parse('42') == 42);

  var str = "str";
  var str1 = 'str1';
//  字符串可以通过 ${expression} 的方式内嵌表达式。 如果表达式是一个标识符，则 {} 可以省略。 在 Dart 中通过调用就对象的 toString() 方法来得到对象相应的字符串
  var str2 = "字符串双引号$str and 单引号 ${str1} 使用字符串拼接";

  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' + 'which is very handy.');
  assert('That deserves all caps. ' + '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' + 'STRING INTERPOLATION is very handy!');

//  使用连续三个单引号或者三个双引号实现多行字符串对象的创建：

  var s1 = '''
You can create
multi-line strings like this one.
''';

  var s2 = """This is also a
multi-line string.""";

//  String s1;
//  s1 = "test";

  print("打印" + str2 + s + TestCc + CcTest);

  // string to int ...
  // int... to string
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

// 01 00
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
}
