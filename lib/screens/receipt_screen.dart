import 'package:checksonme_merchant/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../components/receipt_box.dart';
import '../models/check_data.dart';
import '../components/stripes_painter.dart';

class ReceiptScreen extends StatelessWidget {
  static String id = 'receipt';

  @override
  Widget build(BuildContext context) {
    final CheckData check =
        ModalRoute.of(context).settings.arguments as CheckData;
    final String htmlStart = 'http://checkson.me/paycheck/checkNumber=?';
    final String checkNumberSubstring =
        check.checkNumber.substring(check.checkNumber.length - 4);
    return Scaffold(
      appBar: AppBar(
        title: Text('ChecksOn.Me'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: 150.0,
              width: double.infinity,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'GUEST CHECK',
                      style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 50.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 4.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Row(
                        children: [
                          ReceiptBox(
                            width: 60.0,
                            text: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Date',
                              ),
                            ),
                          ),
                          ReceiptBox(
                            width: 60.0,
                            text: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Table',
                              ),
                            ),
                          ),
                          ReceiptBox(
                            width: 60.0,
                            text: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Guests',
                              ),
                            ),
                          ),
                          ReceiptBox(
                            width: 60.0,
                            text: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Server',
                              ),
                            ),
                          ),
                          ReceiptBox(
                            width: 102.0,
                            text: Align(
                              alignment: Alignment.center,
                              child: Text(
                                checkNumberSubstring,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), //container for boxes
                  ],
                ),
              ),
            ), //container for white area
            Expanded(
              child: Container(
                height: 400.0,
                width: 350.0,
                child: CustomPaint(
                  painter: StripesPainter(),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100.0,
                        ),
                        Transform.rotate(
                          angle: 50.0,
                          child: Text(
                            'Total:    \$${check.dollars}.${check.cents}',
                            textAlign: TextAlign.center,
                            style: kTextStyleHandwriting,
                          ),
                        ),
                        SizedBox(
                          height: 100.0,
                        ),
                        Transform.rotate(
                          angle: 50.0,
                          child: Text(
                            'Thank you!',
                            textAlign: TextAlign.center,
                            style: kTextStyleHandwriting,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 125.0,
              color: Colors.white,
              child: Row(
                children: [
                  QrImage(
                    data: '$htmlStart${check.checkNumber}',
                    version: QrVersions.auto,
                    size: 100,
                    gapless: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
