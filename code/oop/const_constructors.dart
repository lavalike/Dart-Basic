/**
 * const_constructors 常量构造方法
 * const声明构造，所有变量都为final
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  const entity = Entity(10, "Tom");
  entity.work();
}

class Entity {
  final int id;
  final String name;

  const Entity(this.id, this.name);

  void work() {
    print("const constructors id = $id, name = $name.");
  }
}
