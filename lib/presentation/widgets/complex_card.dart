import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_mad_soft/data/models/complex/complex.dart';
import 'package:test_mad_soft/domain/state/storage_info_service_store.dart';
import 'package:test_mad_soft/internal/UI/app_text_style.dart';
import 'package:test_mad_soft/internal/router/app_router.dart';
import 'package:test_mad_soft/internal/utils/sl.dart';
import 'package:test_mad_soft/presentation/widgets/card_app.dart';

class ComplexCard extends StatelessWidget {
  const ComplexCard({super.key, required this.complex});
  final Complex complex;

  int get shootingMemory => complex.totalPointsCount * 5;

  @override
  Widget build(BuildContext context) {
    final appRouter = sl<AppRouter>();
    final serviceStore = sl<StorageInfoServiceStore>();
    return CardApp(
      onTap: () => appRouter.push(ObjectDiagramRoute(complex: complex)),
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
                flex: 3,
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
                flex: 4,
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
                          '$shootingMemory ГБ',
                          style: AppTextStyles.s14w400h1B1B1F,
                        ),
                        Observer(
                          builder: (_) => serviceStore.isLoading
                              ? Container()
                              : Text(
                                  ' / ${serviceStore.totalMemory} ГБ доступно',
                                  style: AppTextStyles.s11w500h6B6C6C,
                                ),
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
    );
  }
}
