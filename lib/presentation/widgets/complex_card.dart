import 'package:flutter/material.dart';
import 'package:test_mad_soft/data/models/complex/complex.dart';
import 'package:test_mad_soft/internal/UI/app_text_style.dart';
import 'package:test_mad_soft/presentation/widgets/card_app.dart';

class ComplexCard extends StatelessWidget {
  const ComplexCard({super.key, required this.complex});
  final Complex complex;
  @override
  Widget build(BuildContext context) {
    return CardApp(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              complex.title,
              style: AppTextStyles.s16w500h1B1B1F,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Отснято сегодня:',
                      style: AppTextStyles.s11w500h6B6C6C,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${complex.remainingPoints}',
                          style: AppTextStyles.s14w400h1B1B1F,
                        ),
                        Text(
                          ' / ${complex.totalPointsCount} доступно',
                          style: AppTextStyles.s11w500h6B6C6C,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Съемка займет: ',
                      style: AppTextStyles.s11w500h6B6C6C,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '127,1 ГБ',
                          style: AppTextStyles.s14w400h1B1B1F,
                        ),
                        Text(
                          ' / 128 ГБ доступно',
                          style: AppTextStyles.s11w500h6B6C6C,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      onTap: () {},
    );
  }
}
