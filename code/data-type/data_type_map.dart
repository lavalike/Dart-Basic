void main() {
  var language = {'first': 'Dart', 'second': 'java', 'third': 'c#'};
//  print(language['first']);
//  print(language['second']);

  language.forEach(f);
}

void f(key, value) {
  print("key=$key, value=$value");
}
