void main() {
  print(findNumInList([20,16,12,8,7,4,0], 7));
}

int findNumInList(List<int> numbers, int num) {
  if (numbers.isNotEmpty){
    int low = 0;
    // as we start counting from 0 index so the last item will be less thant the length by one
    int high = numbers.length - 1;

    while (low <= high) {
      int mid = (low + high) ~/ 2;

      if (num == numbers[mid]) {
        return mid;
      } 

      if (num < numbers[mid]) {
        low = mid + 1;
      }
      else {
        high = mid - 1;
      }
    }
    return -1;
  }
  return -1;
}