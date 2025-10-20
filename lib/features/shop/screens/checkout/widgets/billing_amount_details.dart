import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class BillingAmountDetails extends StatelessWidget {
  const BillingAmountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SubTotal' ,style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256.0' ,style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(height: Sizes.spaceBetweenItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee' ,style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0' ,style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: Sizes.spaceBetweenItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total' ,style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$262.0' ,style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),


      ],
    );
  }
}
