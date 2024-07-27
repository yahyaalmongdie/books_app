import 'package:booky_app/core/utils/api_service.dart';
import 'package:booky_app/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));


  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
 apiService: getIt.get<ApiService>(),
      ),
    
  );
}
