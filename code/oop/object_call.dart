/**
 * object_call 对象Call方法
 * 如果对象内有call方法，则对象可以作为方法被调用
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  var person = Person("Tom", 20);
  person();
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void call() {
    print("Name is $name, Age is $age");
  }
}
