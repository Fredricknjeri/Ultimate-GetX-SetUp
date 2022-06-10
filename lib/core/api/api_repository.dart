import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  //? model response example
/*
  Future<LoginResponse?> login(LoginRequest data) async {
    var res = await apiProvider.login('/auth/login', data);
    print(res);
    if (res.statusCode == 200) {
      print(res.body);
      return LoginResponse.fromJson(res.body);
    } */
  }

 
 

