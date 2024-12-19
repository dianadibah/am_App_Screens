import 'package:am_project/features/main_scr/bloc/main_screen_bloc.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async => _appDependencies();

Future<void> _appDependencies() async {
  serviceLocator.registerLazySingleton<MainScreenBloc>(() => MainScreenBloc());
}
