import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/config/router/app_router.dart';
import 'src/config/themes/app_themes.dart';
import 'src/domain/repositories/order_repository.dart';
import 'src/locator.dart';
import 'src/presentation/providers/orders_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => OrdersProvider(
            getIt<OrderRepository>(),
          ),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Clean Architecture Provider',
      theme: AppTheme.light,
      routerConfig: _appRouter.config(),
    );
  }
}
