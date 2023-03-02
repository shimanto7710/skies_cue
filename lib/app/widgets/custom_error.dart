import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:skies_cue/app/utilities/constant.dart';

class CustomError extends StatelessWidget {
  // final FlutterErrorDetails errorDetails;
  late String summary;

  CustomError({
    super.key,
    required this.summary,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetConstant.errorImage),
            const Text(
              Constant.errorTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 21),
            ),
            const SizedBox(height: 12),
            Text(
              summary,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
