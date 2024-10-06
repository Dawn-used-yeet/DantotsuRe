import 'package:dantotsu/DataClass/Author.dart';
import 'package:flutter/material.dart';

import '../../Widgets/CachedNetworkImage.dart';

class StaffViewHolder extends StatelessWidget {
  final author staffInfo;

  const StaffViewHolder({super.key, required this.staffInfo});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: cachedNetworkImage(
            imageUrl: staffInfo.image ?? '',
            fit: BoxFit.cover,
            width: 108,
            height: 160,
            placeholder: (context, url) => Container(
              color: Colors.white12,
              width: 108,
              height: 160,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              staffInfo.name ?? "",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: theme.onSurface,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                staffInfo.role ?? "",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.0,
                  color: theme.onSurface.withOpacity(0.58),
                  fontStyle: FontStyle.italic,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}