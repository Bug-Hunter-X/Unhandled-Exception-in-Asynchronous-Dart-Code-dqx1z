```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final jsonData = jsonDecode(response.body);
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle error response
      throw Exception('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request
    print('Error fetching data: $e');
    //In this catch block rethrow the exception to be handled further up
    rethrow;
  }
}

void main() async {
  try{
    await fetchData();
  }catch(e){
    print("An error occured: $e");
  }
}
```