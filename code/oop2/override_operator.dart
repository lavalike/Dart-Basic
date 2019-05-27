/**
 * override_operator 操作符覆写
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  var person1 = Person(22);
  var person2 = Person(20);
  print(person1 > person2);
  print(person1['age']);
  print(person1 == person2);
}

class Person {
  int age;

  Person(this.age);

  bool operator >(Person person) {
    return this.age > person.age;
  }

  int operator [](String str) {
    if ("age" == str) {
      return this.age;
    }
    return 0;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && runtimeType == other.runtimeType && age == other.age;

  @override
  int get hashCode => age.hashCode;
}
