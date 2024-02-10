import 'dart:io';

void main() {
  List prime11 = findPrimes(1, 100);
  print('$prime11');
}

List findPrimes(int start, int end) {
  List primes = [];
  for (var i = start; i <= end; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }
  return primes;
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (var i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
