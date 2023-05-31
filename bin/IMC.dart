void main(List<String> arguments) {
  (String, String) calcIMC({required double weight, required double height}) {
    var imc = (weight / (height * height));
    var notice = '';

    if (imc < 18.5) {
      notice = 'Magreza';
    } else if (imc >= 18.5 && imc <= 24.9) {
      notice = 'Peso normal';
    } else if (imc >= 25 && imc <= 29.9) {
      notice = 'Sobrepeso';
    } else if (imc >= 30 && imc <= 34.9) {
      notice = 'Obesidade grau I';
    } else if (imc >= 35 && imc <= 40) {
      notice = 'Obesidade grau II';
    } else if (imc >= 40) {
      notice = 'Obesidade grau III';
    }

    return (imc.toStringAsFixed(2), notice);
  }

  var icmRecord = calcIMC(weight: 60, height: 1.65);

  print(icmRecord);
}
