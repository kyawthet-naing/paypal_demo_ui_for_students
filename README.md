## dart constructor

```bash
void main() {

  Phone phone = Phone.generate(isPremium: false);
  print(phone.brand);

  Phone pPhone = Phone();
  print(pPhone.brand);

  Phone samsung = Phone.samsung();
  print(samsung.brand);

  Phone huawei = Phone.huawei();
  print(huawei.brand);

}

class Phone {

  String? brand;

  //default
  Phone();

  //named
  Phone.samsung({this.brand = "Samsung"});

  //named
  Phone.huawei({this.brand = "Huawei"});

  //factory
  factory Phone.generate({required bool isPremium}) {
    return isPremium ? Phone.samsung() : Phone.huawei();
  }

}
```
    