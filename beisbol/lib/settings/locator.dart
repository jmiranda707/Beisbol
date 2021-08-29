
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerLazySingleton<HomeViewModel>(() => HomeViewModel());
}