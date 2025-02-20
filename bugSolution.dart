```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle the specific error from the API call
      throw Exception('Failed to load data - Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the exception with more information
    print('An error occurred while fetching data: $e');
    //Consider adding more sophisticated error handling here,
    //such as displaying an error message to the user, retrying
    //the request after a delay, or logging the error to a remote server.
  }
}
```