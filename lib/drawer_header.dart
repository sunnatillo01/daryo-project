import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Daryo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                ),
              ),
              const SizedBox(width: 24.0),
              selectLang(),
            ],
          ),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Toshkent',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.cloud_queue_sharp,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 4.0),
                  Row(
                    children: const [
                      Text(
                        '+12.0',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 1.0,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              currensyRate(Icons.monetization_on_outlined, '11600'),
              currensyRate(Icons.euro_symbol, '11600'),
              currensyRate(Icons.euro_symbol, '11600'),
            ],
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
    );
  }

  final List<bool> _isSelected = [false, true];

  Widget selectLang() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30.0),
      ),
      // width: 150.0,
      height: 30.0,
      child: Builder(
        builder: (context) {
          return Expanded(
            child: ToggleButtons(
              selectedBorderColor: Colors.transparent,
              borderColor: Colors.transparent,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                    color: _isSelected[0] ? Colors.white : Colors.blue,
                  ),
                  width: 80.0,
                  height: 30.0,
                  child: Text(
                    'LOTINCHA',
                    style: TextStyle(
                      color: _isSelected[0] ? Colors.blue : Colors.white,
                    ),

                    
                  ),
                  alignment: Alignment.center,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    color: _isSelected[1] ? Colors.white : Colors.blue,
                  ),
                  width: 80.0,
                  height: 30.0,
                  child: Text(
                    'KIRILCHA',
                    style: TextStyle(
                      color: _isSelected[1] ? Colors.blue : Colors.white,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ],
              isSelected: _isSelected,
              onPressed: (index) {
                setState(() {
                  if (index == 0) {
                    _isSelected[0] = true;
                    _isSelected[1] = false;
                  } else {
                    _isSelected[1] = true;
                    _isSelected[0] = false;
                  }
                });
              },
            ),
          );
        }
      ),
    );
  }

  Widget currensyRate(IconData icon, String rate) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          rate,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
