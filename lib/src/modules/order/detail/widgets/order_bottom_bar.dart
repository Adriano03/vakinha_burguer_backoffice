import 'package:flutter/material.dart';

import '../../../../core/ui/styles/text_styles.dart';

class OrderBottomBar extends StatelessWidget {
  const OrderBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OrderBottomBarButton(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          buttonColor: Colors.blue,
          image: 'assets/images/icons/finish_order_white_ico.png',
          buttonLabel: 'Finalizar',
          onPressed: () {
            print('Botão 1');
          },
        ),
        OrderBottomBarButton(
          borderRadius: BorderRadius.zero,
          buttonColor: Colors.green,
          image: 'assets/images/icons/confirm_order_white_icon.png',
          buttonLabel: 'Confirmar',
          onPressed: () {
            print('Botão 2');
          },
        ),
        OrderBottomBarButton(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          buttonColor: Colors.red,
          image: 'assets/images/icons/cancel_order_white_icon.png',
          buttonLabel: 'Cancelar',
          onPressed: () {
            print('Botão 3');
          },
        ),
      ],
    );
  }
}

class OrderBottomBarButton extends StatelessWidget {
  final BorderRadius borderRadius;
  final Color buttonColor;
  final String image;
  final String buttonLabel;
  final VoidCallback onPressed;

  const OrderBottomBarButton({
    Key? key,
    required this.borderRadius,
    required this.buttonColor,
    required this.image,
    required this.buttonLabel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: buttonColor),
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(image),
              const SizedBox(width: 5),
              Text(
                buttonLabel,
                style: context.textStyles.textBold.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
