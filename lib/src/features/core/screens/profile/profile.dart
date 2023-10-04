import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/app_bar.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/nav_bar.dart';

import '../../../../blocs/auth/auth_bloc.dart';
import '../../../../blocs/profile/profile_bloc.dart';
import '../../../../repository/auth_repository/auth_repository.dart';
import '../../../../repository/user/user_repository.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';

  const ProfileScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => BlocProvider<ProfileBloc>(
        create: (context) => ProfileBloc(
          authBloc: BlocProvider.of<AuthBloc>(context),
          userRepository: context.read<UserRepository>(),
        )..add(
            LoadProfile(context.read<AuthBloc>().state.authUser),
          ),
        child: const ProfileScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Profile'),
      bottomNavigationBar: const NavBar(screen: routeName),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.black),
            );
          }
          if (state is ProfileLoaded) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<AuthRepository>().signOut();
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(), backgroundColor: Colors.black,
                  fixedSize: const Size(200, 40),
                ),
                child: Text(
                  'Sign Out',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            );
          }
          if (state is ProfileUnauthenticated) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'You are not logged in!',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(), backgroundColor: Colors.black,
                    fixedSize: const Size(200, 40),
                  ),
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                    context.read<AuthRepository>().signOut();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(), backgroundColor: Colors.white,
                    fixedSize: const Size(200, 40),
                  ),
                  child: Text(
                    'Signup',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            );
          } else {
            return const Text('Something went wrong');
          }
        },
      ),
    );
  }
}
