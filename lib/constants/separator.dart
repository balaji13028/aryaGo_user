import 'package:flutter/material.dart';

class MySeparator extends StatelessWidget {
  const MySeparator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashCount = (boxWidth / (2 * 3)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return const SizedBox(
              width: 3,
              height: 0.5,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.black54),
              ),
            );
          }),
        );
      },
    );
  }
}
