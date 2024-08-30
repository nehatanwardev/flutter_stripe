
import 'package:flutter/material.dart';
import 'package:flutter_stripe_demo/services/stripe_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stripe Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Make Payment'),
              onPressed: () async {
                await StripeServices.instance.makePayment(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
