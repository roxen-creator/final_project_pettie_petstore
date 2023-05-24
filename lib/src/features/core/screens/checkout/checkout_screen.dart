// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../blocs/checkout/checkout_bloc.dart';
// import '../widget/app_bar.dart';
// import '../widget/custom_text_form_field.dart';
// import '../widget/nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/custom_text_form_field.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/order_summary.dart';

import '../widget/app_bar.dart';
import '../widget/nav_bar.dart';

class CheckoutScreen extends StatelessWidget {
  static const String routeName = '/checkout';

  const CheckoutScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const CheckoutScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: const MyAppBar(title: 'Checkout'),
      bottomNavigationBar: const NavBar(screen: routeName),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer Infromation',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const CustomTextFormField(title: 'email'),
 const CustomTextFormField(title: 'Full Name'),
 
     Text(
              'Delivery Infromation',
              style: Theme.of(context).textTheme.displayMedium,
            ),
             const CustomTextFormField(title: 'Address'),
   const CustomTextFormField(title: 'City'),
    const CustomTextFormField(title: 'Country'),
     const CustomTextFormField(title: 'Zip Code'),
            Text(
              'Order Summmary',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const OrderSummary(),
        
          ],
        ),
      ),
    );
  }
}

//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: BlocBuilder<CheckoutBloc, CheckoutState>(
//           builder: (context, state) {
//             if (state is CheckoutLoading) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//             if (state is CheckoutLoaded) {
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'CUSTOMER INFORMATION',
//                     style: Theme.of(context).textTheme.displaySmall,
//                   ),
//                   CustomTextFormField(
//                     title: 'Email',
//                     onChanged: (value) {
//                       context
//                           .read<CheckoutBloc>()
//                           .add(UpdateCheckout(email: value));
//                     },
//                   ),
//                   CustomTextFormField(
//                     title: 'Full Name',
//                     onChanged: (value) {
//                       context
//                           .read<CheckoutBloc>()
//                           .add(UpdateCheckout(fullName: value));
//                     },
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     'DELIVERY INFORMATION',
//                     style: Theme.of(context).textTheme.displaySmall,
//                   ),
//                   CustomTextFormField(
//                     title: 'Address',
//                     onChanged: (value) {
//                       context
//                           .read<CheckoutBloc>()
//                           .add(UpdateCheckout(address: value));
//                     },
//                   ),
//                   CustomTextFormField(
//                     title: 'City',
//                     onChanged: (value) {
//                       context
//                           .read<CheckoutBloc>()
//                           .add(UpdateCheckout(city: value));
//                     },
//                   ),
//                   CustomTextFormField(
//                     title: 'Country',
//                     onChanged: (value) {
//                       context
//                           .read<CheckoutBloc>()
//                           .add(UpdateCheckout(country: value));
//                     },
//                   ),
//                   CustomTextFormField(
//                     title: 'ZIP Code',
//                     onChanged: (value) {
//                       context
//                           .read<CheckoutBloc>()
//                           .add(UpdateCheckout(zipCode: value));
//                     },
//                   ),
//                   const SizedBox(height: 20),
//                   Container(
//                     height: 60,
//                     alignment: Alignment.bottomCenter,
//                     decoration: const BoxDecoration(color: Colors.black),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Center(
//                           child: TextButton(
//                             onPressed: () {
//                               Navigator.pushNamed(
//                                 context,
//                                 '/payment-selection',
//                               );
//                             },
//                             child: Text(
//                               'SELECT A PAYMENT METHOD',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .displaySmall!
//                                   .copyWith(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.arrow_forward,
//                             color: Colors.white,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     'ORDER SUMMARY',
//                     style: Theme.of(context).textTheme.displaySmall,
//                   ),
//                   // OrderSummary()
//                 ],
//               );
//             } else {
//               return const Text('Something went wrong');
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
