import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 12.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: <Widget>[
              const SizedBox(width: 8),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print('Search button pressed');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey.shade200),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    height: 30, // Tinggi yang diinginkan untuk menyamakan
                    child: Row(
                      children: [
                        SizedBox(width: 3),
                        Text(
                          'apa yang anda butuhkan atau tawarkan',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('Create Post button pressed');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey.shade200),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(50, 50)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(1),
                  child: Icon(
                    Icons.add_box,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
