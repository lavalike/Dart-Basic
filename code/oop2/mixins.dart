/**
 * mixins Mixins类型与多继承，是在多类继承中重用代码的方式
 * with必须与extends共用
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  var d = D();
  d.a();
  d.b();
  d.c();
  d.d();
}

class A {
  void a() {
    print("A.a()...");
  }
}

class B {
  void b() {
    print("B.b()...");
  }
}

class C {
  void c() {
    print("C.c()...");
  }
}

class D extends A with B, C {
  void d() {
    print("D.c()...");
  }
}
