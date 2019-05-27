/**
 * rectangle
 * Created by wangzhen on 2019-05-27.
 */
class RectAngle {
  num width, height;

  //计算属性 取值
  num get area => width * height;

//计算忏悔 赋值
  set area(value) {
    width = value / 20;
  }
}
