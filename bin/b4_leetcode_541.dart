

void main(List<String> args) {
  print(reverseStr("abcdefg", 2));
  print(reverseStr("abcd", 2));
}

String reverseStr(String s, int k) {
  int i = 0;
  List<String> arr = s.split('');

  while (i < s.length) {
    int j = i;
    int l = i + k - 1;
    while (j < l) {
      // hoán đổi vị trí
      arr[j] = s[l];
      arr[l--] = s[j++]; // cho l-- và j++ để tránh khỏi vòng lặp vô hạn
    }
    // bước nhảy là 2k ký tự
    i += k * 2;
  }

  return arr.join();
}
