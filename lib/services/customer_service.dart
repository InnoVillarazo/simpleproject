import 'package:riverpod/riverpod.dart';

class CustomerService {
  final Ref container;
  final List<Customer> _customers = [];

  CustomerService(this.container);

  void addCustomer(String name, String email) {
    final newCustomer = Customer(name, email);
    _customers.add(Customer(name, email));
  }

  void viewCustomer() {
    if (_customer.isEmpty) {
      print('No customer. You go away now!');
    } else {
      print('Customers: ');
      for (final customer in _customers) {
        print(customer);
      }
    }
  }

  List<Customer> get customers => _customers;
}
