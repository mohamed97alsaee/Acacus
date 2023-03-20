import 'package:acacus/helpers/consts.dart';
import 'package:flutter/material.dart';

class ClosePlaceCard extends StatelessWidget {
  const ClosePlaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: mainColor.withOpacity(0.1), width: 1),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.network(
                  'https://tourslibya.com/wp-content/uploads/2018/01/libya-tours-jebel-acacaus-1.jpg',
                  width: size.width * 0.18,
                  height: size.width * 0.18,
                  fit: BoxFit.cover,
                ),
              ),
            ), // name and destenatiom
            // name and dest
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'مسرح الكالسيوم',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Row(
                  children: const [
                    Icon(Icons.location_on, color: Colors.redAccent, size: 14),
                    Text(
                      '3.2 كم',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.redAccent),
                    ),
                  ],
                ),
              ],
            ),

            // rate star and text
            Row(
              children: const [
                Text(
                  '4.2',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87),
                ),
                Icon(Icons.star_border_outlined,
                    color: Colors.black87, size: 14),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
