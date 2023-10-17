import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final TextEditingController searchController;
  const MySearchBar({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      style: const TextStyle(color: Colors.white),
      decoration:  InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.white)),
        prefixIcon: const Icon(Icons.search),
        suffixIcon: const Icon(Icons.mic),
        suffixIconColor: Colors.white,
        prefixIconColor: Colors.white,
        focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: const BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: const BorderSide(color: Colors.grey)),
      ),
    );
  }
}
