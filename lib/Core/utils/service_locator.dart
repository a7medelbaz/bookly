import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Features/Home/data/repositories/home_repo_implementation.dart';
import 'package:get_it/get_it.dart';

// 1. Get the instance of GetIt.
// Using GetIt.instance ensures that this is a single, globally accessible
// service locator container for your entire application.
final getIt = GetIt.instance;

// 2. Create a function to set up all the dependencies.
// This function will be called once when the app starts, usually in main.dart.
setupServiceLocator() {
  // 3. Registering the ApiService.
  // We register it as a Singleton, meaning GetIt will create one instance
  // of ApiService and will return that same instance every time we ask for it.
  getIt.registerSingleton<ApiService>(ApiService());

  // 4. Registering the HomeRepoImplementation.
  // This registration also creates a Singleton.
  // The constructor for HomeRepoImplementation requires an ApiService instance.
  // So, we create a new HomeRepoImplementation, and for its 'apiService' parameter,
  // we ask GetIt (using getIt<ApiService>()) to provide the ApiService
  // singleton that we just registered in the step above.
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      // We are passing the already-registered ApiService instance
      // to the constructor of HomeRepoImplementation.
      apiService: getIt<ApiService>(),
    ),
  );
}
