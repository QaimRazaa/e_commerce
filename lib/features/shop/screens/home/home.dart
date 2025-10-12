import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCurvedEdgeWidget(child:Container(
              color: AppColors.primary,
              padding: EdgeInsets.all(0),
              child: SizedBox(
                height: 400,
                child: PrimaryHeaderContainer(child:
                  Column(
                    children: [

                    ],
                  ),),
              ),
            ),)
          ],
        ),
      ),
    );
  }
}





