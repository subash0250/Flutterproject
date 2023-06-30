import 'package:car_catalogue/app/modules/success/views/success_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Payment'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Get.to(() => SuccessView());
          },
          label: Text('Pay'),
          icon: Icon(Icons.payment_sharp),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/atm.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter Your Bank Name'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Account Number',
                            hintText: 'Enter 8-12 Digit number'),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Confirm Account Number',
                            hintText: 'Confirm Your Account Number'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'IFSC Code',
                            hintText: 'Enter IFSC Code'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'CVV', hintText: 'CVV Number'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
