```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try{
        // Handle successful response
        final jsonData = jsonDecode(response.body);
        print('Data fetched successfully: $jsonData');
      } catch(e){
        print("Error decoding JSON: $e");
        rethrow; //Rethrow to allow higher level exception handling
      }
    } else {
      // Handle error response
      throw Exception('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request
    print('Error fetching data: $e');
    rethrow; //Rethrow to allow higher level exception handling
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