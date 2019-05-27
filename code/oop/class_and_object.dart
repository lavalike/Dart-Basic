import 'person.dart';
import 'rectangle.dart';

/**
 * class_and_object
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  var person = Person();
  person.name = "Tom";
  person.age = 20;
  person.work();

  var rectAngle = RectAngle();
  rectAngle.width = 20;
  rectAngle.height = 10;
  print("面积为 -> ${rectAngle.area}");
}
