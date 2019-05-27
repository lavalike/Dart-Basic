/**
 * generics 泛型
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  var utils1 = Utils1();
  utils1.put("1");
  utils1.put(1);
  utils1.put(Map());

  var utils2 = Utils2();
  utils2.put<String>("1");
  utils2.put<int>(1);
}

class Utils1<T> {
  T element;

  void put(T element) {
    this.element = element;
  }
}

class Utils2 {
  dynamic element;

  void put<T>(T element) {
    this.element = element;
  }
}
