import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20),
          height: 60,
          width: MediaQuery.of(context).size.width * 0.63,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 184, 230, 231),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 3),
                blurRadius: 8,
              ),
            ],
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w400),
              suffixIcon: Icon(Icons.search),
              suffixIconColor: Colors.white,
            ),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.height * 0.02),
        Container(
          height: 60,
          width: MediaQuery.of(context).size.height * 0.09,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 184, 230, 231),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 3),
                blurRadius: 8,
              ),
            ],
          ),
          child: const Icon(Icons.location_on, color: Colors.white, size: 25),
        )
      ],
    );
  }
}
