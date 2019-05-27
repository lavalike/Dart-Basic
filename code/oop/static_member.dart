/**
 * static_member
 * Created by wangzhen on 2019-05-27.
 */
void main() {
  Page.scrollUp();
}

class Page {
  static const int MAX_PAGE = 10;
  static int currentPage = 1;

  static void scrollDown() {
    currentPage = 1;
  }

  static void scrollUp() {
    currentPage++;
  }
}
