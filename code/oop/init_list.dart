/**
 * init_list
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  var entity = Entity(10, "Tom", 100);
  entity.work();

  var map = Map();
  map["id"] = 20;
  map["name"] = "Jerry";
  map["score"] = 60;
  var entity2 = Entity.withMap(map);
  entity2.work();
}

class Entity {
  int id;
  String name;
  final int score;

  Entity(this.id, this.name, this.score);

  /**
   * 初始化列表
   */
  Entity.withMap(Map map) : score = map["score"] {
    this.id = map["id"];
    this.name = map["name"];
  }

  void work() {
    print("id = $id, name = $name, score = $score.");
  }
}
