import 'dart:math';

void main(List<String> args) {
  print(backspaceCompare("ab#c", "ad#c"));
}
bool backspaceCompare(String s, String t) {
  // tạo 2 list để lưu trữ 2 string
  List<String> st1 = [], st2 = [];
  // tạo vòng lặp để xóa và thêm vào 2 list
  for (int i = 0; i < max(s.length, t.length); i++) {
    // String s
    if (s.isNotEmpty) {
      if (s[i] == '#' && st1.isNotEmpty) {
        st1.removeLast();
      } else if (s[i] != '#') {
        st1.add(s[i]);
      }
    }
    // String t
    if (t.isNotEmpty) {
      if (t[i] == '#' && st2.isNotEmpty) {
        st2.removeLast();
      } else if (t[i] != '#') {
        st2.add(t[i]);
      }
    }
  }
  // đưa 2 list về kiểu string rồi so sánh
  return st1.join() == st2.join();
}
