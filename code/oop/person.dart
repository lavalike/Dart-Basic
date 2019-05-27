/**
 * person
 * Created by wangzhen on 2019-05-27.
 */
class Person {
  String name;
  int age;
  int _gender = 1;

  void work() {
    print("Name is $name, Age is $age, sex is ${_gender == 0 ? "女" : "男"}");
  }
}
