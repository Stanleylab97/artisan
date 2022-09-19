import 'package:flutter/material.dart';

class StatItem extends StatelessWidget {
  final String label;
  final String value;
  final MyBadge? badge;
  final bool haveBadge;

  const StatItem({
    Key? key,
    required this.label,
    required this.value,
    this.badge,
    required this.haveBadge
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        // Creating badge
        if(haveBadge)
        Container(
          child: badge,
        )
        else
        Container(
          child: Text(""),
        )
      ],
    );
  }
}

class MyBadge extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const MyBadge({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color.withAlpha(40),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 12,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 10,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}