class BankAccount {
  String owner;
  double _balance;  // private 변수 (_ 붙이면 외부에서 직접 접근 X)

  BankAccount(this.owner, this._balance); // 생성자 java 랑 똑같네


  void deposit(double amount) {
    _balance += amount;
    print("$amount원이 입금되었습니다. 현재 잔액: $_balance원");
  }

  void withdraw(double amount) {
    if (amount > _balance) {
      print("잔액이 부족합니다! 현재 잔액: $_balance원");
    } else {
      _balance -= amount;
      print("$amount원이 출금되었습니다. 현재 잔액: $_balance원");
    }
  }

  double get balance => _balance;  // getter
}

void main() {
  BankAccount account = BankAccount("groovy", 10000);
  
  account.deposit(5000);
  account.withdraw(12000);
  account.withdraw(3000);
}
