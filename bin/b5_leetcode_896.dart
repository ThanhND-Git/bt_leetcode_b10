void main(List<String> args) {
  print(isMonotonic([1, 2, 2, 3]));
  print(isMonotonic([6, 5, 4, 4]));
  print(isMonotonic([1, 3, 2]));
}

bool isMonotonic(List<int> nums) {
  // xác định thuộc tính mảng tăng giảm bằng cách so sánh 2 phần tử ở 2 đầu;
  bool isInc; 
  if ((nums[0] <= nums[nums.length - 1])) {
    isInc = true; // là mảng tăng
  } else {
    isInc = false; // là mảng giảm
  }
  // sau đó lặp qua mảng để tìm xem có phần tử nào ngược lại với thuộc tính không
  for (int i = 1; i < nums.length; i++) {
    if (isInc && nums[i] < nums[i - 1]) {
      return false;
    } else if (!isInc && nums[i] > nums[i - 1]) {
      return false;
    }
  }
  // nếu đáp ứng hết thì đó là mảng đơn điệu
  return true;
}
