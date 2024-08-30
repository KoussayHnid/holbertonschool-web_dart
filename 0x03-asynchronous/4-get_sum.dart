import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersData);

    double totalPrice = 0.0;

    for (var productId in orders) {
      String priceData = await fetchProductPrice(productId);
      double price = double.parse(priceData);
      totalPrice += price;
    }

    return totalPrice;
  } catch (e) {
    print('Error caught: $e');
    return -1;
  }
}
