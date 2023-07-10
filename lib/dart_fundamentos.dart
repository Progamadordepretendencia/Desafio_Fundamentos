int calculate() {
  return 6 * 7;
}
void main() {
  final numeros = List.generate(10, (index) => index);
  print(numeros);
  numeros.addAll(List.generate(5, (index) => index));
  print(numeros);
  
  for (var numero in numeros) {
    numero += numeros[numero];
    print(numero);
  }
}