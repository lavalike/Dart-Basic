void main() {
  String str1 = 'str1 Hello';
  String str2 = "str2 Hello";
  String str3 = '''str3 
  Hello''';
  String str4 = "str4 Hello \n World";
  String str5 = r"str4 Hello \n World "; //前面添加r可以直接打印转义字符
  String str6 = "${str1} from str1";

  print(str1);
  print(str2);
  print(str3);
  print(str4);
  print(str5);
  print(str5 * 3);
  print(str5[0]);
  print(str6);
}
