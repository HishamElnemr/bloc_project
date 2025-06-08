import 'package:bloc_project/constants/strings.dart';
import 'package:dio/dio.dart';

class CharactersServices {
  late Dio dio;
  CharactersServices() {
    dio = Dio(
      BaseOptions(
        baseUrl: Strings.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
      ),
    );
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      print(response.data.toString());
      return response.data['results'];
    } on Exception catch (e) {
      print('Error fetching characters: $e');
      return [];
    }
  }
}
