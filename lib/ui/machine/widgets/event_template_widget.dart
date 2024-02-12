import 'package:flutter/material.dart';

class EventTemplateWidget extends StatelessWidget {
  final String time;
  final String title;
  final String? subtitle;
  const EventTemplateWidget({super.key, required this.time, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(top: 8,),
          decoration: BoxDecoration(
              border: const Border(
                left: BorderSide(color: Color(0xFFF97879), width: 4),
              ),
              borderRadius: BorderRadius.circular(4)),
          child: ListTile(
            leading: Text(
              time,
              style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            title: Text(
              title,
              style: const TextStyle(
                  color: Color(0xFF131037),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: subtitle != null ? Text(
              subtitle!,
              style: const TextStyle(
                  color: Color(0xFFCCCCCC),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ) : null,
          ),
        );
  }
}