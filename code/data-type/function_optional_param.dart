void main() {
  printPerson("wazh");
  printPerson("wazh", age: 20);
  printPerson("wazh", age: 20, gender: "男");
}

printPerson(String name, {int age = 100, String gender}) {
  print("name=$name,age=$age,gender=$gender");
}
