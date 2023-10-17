import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('assets/Icons/search-icon.svg',colorFilter: const ColorFilter.mode(Colors.black54, BlendMode.srcIn),),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('assets/Icons/mic-icon.svg',),
        ),
        suffixIconColor: Colors.white,
        prefixIconColor: Colors.white,
        focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: const BorderSide(color: Colors.white70)),
        enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: const BorderSide(color: Colors.white12)),
      ),
    );
  }
}
