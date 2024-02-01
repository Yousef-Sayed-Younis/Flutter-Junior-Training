class CounterLogic {
  static int counter = 0;

  static void increase() => ++counter;

  static void decrease() => --counter;

  static void changeCounter(String sign) => sign == "+" ? increase() : decrease();
}
