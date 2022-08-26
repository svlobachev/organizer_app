import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'enterСodeText'.tr,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 16,
            // color: const Color.fromRGBO(133, 153, 170, 1),
          ),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
