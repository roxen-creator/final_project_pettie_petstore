import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/app_bar.dart';


class PaymentSelection extends StatefulWidget {
  static const String routeName = '/payement-selection';

  const PaymentSelection({super.key});

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const PaymentSelection(),
    );
  }

  @override
  State<PaymentSelection> createState() => _PaymentSelectionState();
}

class _PaymentSelectionState extends State<PaymentSelection> {
  TextEditingController amountController = TextEditingController();
  getAmt() {
    return int.parse(amountController.text) * 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(title: 'Payment '),
        // bottomNavigationBar: const NavBar(screen: PaymentSelection.routeName),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter Amount to pay.",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Colors.red),
                  ),
                  height: 50,
                  color: const Color(0xFF56328c),
                  child: const Text(
                    'Pay with Khalti',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  onPressed: () {
                    KhaltiScope.of(context).pay(
                      config: PaymentConfig(
                          amount: getAmt(),
                          productIdentity: 'Product Id',
                          productName: 'Product name'),
                      preferences: [
                        PaymentPreference.khalti,
                        PaymentPreference.connectIPS,
                      ],
                      onSuccess: (su) {
                        const successsnackBar = SnackBar(
                          content: Text('Payment Sucessful'),
                        );
                        ScaffoldMessenger.of(context)
                            .showSnackBar(successsnackBar);
                      },
                      onFailure: (fa) {
                        const failedsnackBar = SnackBar(
                          content: Text('Payment Failed.'),
                        );
                        ScaffoldMessenger.of(context)
                            .showSnackBar(failedsnackBar);
                      },
                      onCancel: () {
                        const cancelsnackBar = SnackBar(
                          content: Text('Payment Cancelled.'),
                        );
                        ScaffoldMessenger.of(context)
                            .showSnackBar(cancelsnackBar);
                      },
                    );
                  }),
            ],
          ),
        ));
  }
}
