/**
 * constructors
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  var entity = Entity(1, "Tom");
  entity.work();

  var entity2 = Entity.withName("Only Name");
  entity2.work();
}

class Entity {
  int id;
  String name;

  Entity(this.id, this.name);

  /**
   * 构造方法
   */
  Entity.withName(this.name);

  void work() {
    print("id = $id, name = $name.");
  }
}
