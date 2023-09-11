import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:pettie_petstore/firebase_options.dart';
import 'package:pettie_petstore/src/blocs/cart/cart_bloc.dart';
import 'package:pettie_petstore/src/blocs/category/category_bloc.dart';
import 'package:pettie_petstore/src/blocs/checkout/checkout_bloc.dart';
import 'package:pettie_petstore/src/blocs/product/product_bloc.dart';
import 'package:pettie_petstore/src/blocs/search/search_bloc.dart';
import 'package:pettie_petstore/src/blocs/wishlist/wishlist_bloc.dart';
import 'package:pettie_petstore/src/features/core/screens/dashboard/dashboard.dart';
import 'package:pettie_petstore/src/repository/authentication_repository/authentication_repository.dart';
import 'package:pettie_petstore/src/repository/category/category_repository.dart';
import 'package:pettie_petstore/src/routing/app_router.dart';
import 'package:pettie_petstore/src/utis/theme/theme.dart';
import 'src/repository/checkout_repository/checkout_repository.dart';
import 'src/repository/product/product_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => WishlistBloc()
            ..add(
              LoadWishlist(),
            ),
        ),
        BlocProvider(
          create: (_) => CartBloc()
            ..add(
              LoadCart(),
            ),
        ),
        BlocProvider(
            create: (_) =>
                CategoryBloc(categoryRepository: CategoryRepository())
                  ..add(LoadCategories())),
        BlocProvider(
            create: (_) => ProductBloc(productRepository: ProductRepository())
              ..add(LoadProducts())),
        BlocProvider(
          create: (context) => SearchBloc(
            productBloc: context.read<ProductBloc>(),
          )..add(LoadSearch()),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc(
            cartBloc: context.read<CartBloc>(),
            checkoutRepository: CheckoutRepository(),
          ),
        ),
      ],
      child: KhaltiScope(
        publicKey: 'test_public_key_cbe253bc58ca494bac14bf54fe700690',
        enabledDebugging: true,
        builder: (context, navKey) {
          return GetMaterialApp(
            themeMode: ThemeMode.system,
            darkTheme: PAppTheme.darkTheme,
            theme: PAppTheme.lightTheme,

            home: const Dashboard(),
            onGenerateRoute: AppRouter.onGenerateRoute,
            // initialRoute: CheckoutScreen.routeName,
            navigatorKey: navKey,
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('ne', 'NP'),
            ],
            localizationsDelegates: const [KhaltiLocalizations.delegate],
          );
        },
      ),
    );
  }
}
