import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_mad_soft/domain/entities/complex.dart';
import 'package:test_mad_soft/presentation/state/storage_info_service_store.dart';
import 'package:test_mad_soft/config/UI/app_text_style.dart';
import 'package:test_mad_soft/config/router/app_router.dart';
import 'package:test_mad_soft/initialize_dependencie.dart';
import 'package:test_mad_soft/presentation/widgets/card_app.dart';

class ComplexCard extends StatelessWidget {
  const ComplexCard({super.key, required this.complexEntity});
  final ComplexEntity complexEntity;

  int get shootingMemory => complexEntity.totalPointsCount * 5;

  @override
  Widget build(BuildContext context) {
    final appRouter = sl<AppRouter>();
    final serviceStore = sl<StorageInfoServiceStore>();
    return CardApp(
      onTap: () =>
          appRouter.push(ObjectDiagramRoute(complexEntity: complexEntity)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              complexEntity.title,
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
                          '${complexEntity.remainingPoints}',
                          style: AppTextStyles.s14w400h1B1B1F,
                        ),
                        Text(
                          ' / ${complexEntity.totalPointsCount} доступно',
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
