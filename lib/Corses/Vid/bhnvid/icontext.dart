import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  const IconTextRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIconText(context, Icons.timelapse_outlined, '196 Minutes'),
          SizedBox(width: 44),
          _buildIconText(context, Icons.video_camera_back, '21 Videos'),
        ],
      ),
    );
  }

  Widget _buildIconText(BuildContext context, IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: const Color.fromARGB(255, 65, 64, 64)),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            color: Color.fromARGB(255, 65, 64, 64),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
