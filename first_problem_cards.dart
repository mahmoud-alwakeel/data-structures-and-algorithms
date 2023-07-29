void main() {
  print(returnIndexFromList([9,7,5,3,1], 2));
}

int returnIndexFromList(List<int> numbers, int num) {
  if (numbers.isNotEmpty){
    for(int i = 0; i < numbers.length; i++) {
      if (num == numbers[i]) {
        return i;
      }
    }
    return -1;
  }
  return -1;
}