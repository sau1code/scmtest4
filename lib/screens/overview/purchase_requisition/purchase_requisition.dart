import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PurchaseRequisitionScreen extends StatelessWidget {
  const PurchaseRequisitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFBCE0F5),
      child: Align(
        alignment: const Alignment(-0.99, -0.9),
        child: IconButton(
          color: const Color(0xFF777777),
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(context),
        ),
      ),
    );
  }
}

