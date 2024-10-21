abstract class Bank {
  String name;
  double rate;

  Bank(this.name, this.rate);

  void interest();

  void display() {
    print('Bank Name: $name');
  }
}

class SBI extends Bank {
  SBI(String name, double rate) : super(name, rate);

  @override
  void interest() {
    print('The rate of interest of SBI is $rate');
  }
}

class ICICI extends Bank {
  ICICI(String name, double rate) : super(name, rate);

  @override
  void interest() {
    print('The rate of interest of ICICI is $rate');
  }
}

void main() {
  SBI sbi = SBI('SBI', 8.4);
  ICICI icici = ICICI('ICICI', 7.3);

  sbi.interest();
  icici.interest();
  icici.display();
  sbi.display();
}
