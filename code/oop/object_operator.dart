/**
 * object_operator 对象操作符
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  Person person;
  person?.work();

  var person1 = null;
  person1 = new Person();
  (person1 as Person).work();

  var person2 = "";
  if (person2 is Person) {
    (person2 as Person).work();
  } else {
    print("person2 不是 Person类型");
  }

  Person()
    ..name = "Tom"
    ..age = 20
    ..work();
}

class Person {
  String name;
  int age;

  void work() {
    print("work... $name, $age");
  }
}
