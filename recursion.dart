// if we want to make factorial using recusrion
void main() {
  print(factUsingRecursion(3));
}
int factUsingRecursion(int number) {
  if(number == 1) {
    return 1;
  }
  return number * factUsingRecursion(number -1);
}

// if we want to make factorial using a foor loop
/*void main () {
  print(factUsingForLoop(3));
}

int factUsingForLoop(int number) {
  int result = 1;
  for (int i = number; i >= 1; i--) {
    result = result * i;
  }
  return result;
} */
