void main() {
  for (var i = 0; i < 100; i++) {
    if (i % 3 == 0) {
      print('$i Fizz');
    }
    if (i % 5 == 0) {
      print('$i Buzz');
    }
    if (i % 5 == 0 && i % 3 ==0) {
      print('$i FizzBuzz');
    }
  }
}
