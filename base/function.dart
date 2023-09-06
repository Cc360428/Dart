
void main(){
  String s = say("","");
  print(s);
  // bold 值为 true; hidden 值为 false.
  enableFlags(bold: true);
}

/**
 *
 */
// 返回参数 方法名（参数，参数，可选参数）
String say(String from, String msg,[String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

/// 设置 [bold] 和 [hidden] 标志 ...
void enableFlags({bool bold = false, bool hidden = false}) {}

