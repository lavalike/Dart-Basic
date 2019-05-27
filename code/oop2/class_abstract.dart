/**
 * class_abstract
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  var student = new Student();
  student.run();
}

class Student extends Person {
  @override
  void run() {
    print("Student run");
  }
}

abstract class Person {
  void run();
}
