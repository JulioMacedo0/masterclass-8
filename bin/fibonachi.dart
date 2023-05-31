void main(List<String> arguments) {
  List<int> createFibonachiSequence(
      {required int sequenceNumber, List<int> fibonachiArray = const [0, 1]}) {
    if (sequenceNumber == 0) return fibonachiArray;

    var lastValue = fibonachiArray[fibonachiArray.length - 1];
    var penultimateValue = fibonachiArray[fibonachiArray.length - 2];

    var newSequence = [...fibonachiArray];
    newSequence.add(lastValue + penultimateValue);

    return createFibonachiSequence(
        sequenceNumber: --sequenceNumber, fibonachiArray: newSequence);
  }

  var fibonachiSequence = createFibonachiSequence(sequenceNumber: 15);

  print(fibonachiSequence);
}
