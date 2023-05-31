void main(List<String> arguments) {
  double calcIMC({required double weight, required double height}) {
    return weight / (height * height);
  }

  print(calcIMC(weight: 60, height: 1.65));
}
