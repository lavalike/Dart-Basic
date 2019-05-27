void main() {
  var list = [1, 2, 3, "hello"];
  print(list);
  list.add("world");
  print(list);
  list[3] = "Haha";
  print(list);

  var list2 = const [1, 2, 3]; //不可修改

  for (int i = 0; i < list.length; i++) {
    print("第$i位置 --> ${list[i]}");
  }
  
}
