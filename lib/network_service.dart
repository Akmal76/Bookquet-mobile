import 'dart:convert';
import 'package:http/http.dart' as http;
import 'pbp_django_auth.dart';
import 'modelsReadLater.dart';
import 'package:provider/provider.dart';

class NetworkService { 
  // final request = context.watch<CookieRequest>();
  // final String baseUrl = 'http://your-api-url';
  final String baseUrl = 'http://127.0.0.1:8000/read-later';

  Future<bool> addToReadLater(CookieRequest request, int bookId,String priority) async {
    try {
        print("masuk-1");
      // var response = await request.post('http://127.0.0.1:8000/read-later/add-to-read-later2/$bookId/',{});
      var response = await request.post('http://127.0.0.1:8000/read-later/add-to-read-later2/$bookId/', {
      "priority": priority, 
    });
        print(response);
        print("masuk0");
      if (response['status'] == "Added") {
        print("masuk1");
        return true; // Book added to read-later successfully
      } else {
        print("masuk2");
        return false; // Failed to add book to read-later
      }
    } catch (e) {
      print('Error adding book to read-later: $e');
      return false; // Handle any errors here
    }
  }
  Future<bool> removeFromReadLater(CookieRequest request, int itemId) async {
    // var url = Uri.parse('http://127.0.0.1:8000/read-later/delete_item_ajax/$itemId/'); // Use the correct endpoint
    var response = await request.delete('http://127.0.0.1:8000/read-later/delete_item_ajax/$itemId/'); // Convert the Uri to a string

    return true;
  }
  Future<List<ItemReadLater>> fetchReadLaterBooks(request, String priority) async {
    var response = await request.get('http://127.0.0.1:8000/read-later/read/json/?priority=$priority');
    // print(response);
    List<ItemReadLater> list_product = [];
    for (var d in response) {
        if (d != null) {
            list_product.add(ItemReadLater.fromJson(d));
        }
    }
    print(list_product);
    return list_product;
  }
  Future<bool> upgradePriority(CookieRequest request, int itemId) async {
    print(itemId);
    try {
      var response = await request.post('http://127.0.0.1:8000/read-later/adjust_priority_ajax/$itemId/',{});
       if (response['status'] == 'UPDATED') { 
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error upgrading priority: $e');
      return false;
    }
  }

}
