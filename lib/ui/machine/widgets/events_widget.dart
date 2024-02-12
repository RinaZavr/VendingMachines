import 'package:flutter/material.dart';
import 'package:vendingmachines/ui/machine/widgets/event_template_widget.dart';

class EventsWidget extends StatelessWidget {
  const EventsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'События',
          style: TextStyle(
              color: Color(0xFF131037),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        const EventTemplateWidget(
          time: '14:00',
          title: 'Сейф переполнен',
        ),
        const EventTemplateWidget(
          time: '11:20',
          title: 'Сломался купюроприемник',
          subtitle: '2341245',
        ),
        const EventTemplateWidget(
          time: '11:20',
          title: 'Закончилась наличка',
          subtitle: 'Toshiba снековый',
        ),
        Container(
          margin: const EdgeInsets.only(top: 16, bottom: 24),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF218CEF),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Смотреть еще',
                style: TextStyle(
                    color: Color(0xFF218CEF),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
