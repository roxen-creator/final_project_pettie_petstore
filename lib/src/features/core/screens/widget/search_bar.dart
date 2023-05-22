

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool _isSearching = false;
  bool _showFilters = false;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          const SizedBox(width: 1),
          Expanded(
            child: TextField(
  controller: _searchController,
  focusNode: _searchFocusNode,
  decoration: InputDecoration(
    hintText: 'Search',
    hintStyle: TextStyle(
      fontFamily: 'monospace',
      fontStyle: FontStyle.normal,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide.none,
    ),
  ),
),
          ),
          const SizedBox(width: 2),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
                if (_isSearching) {
                  _searchFocusNode.requestFocus();
                } else {
                  _searchFocusNode.unfocus();
                }
                _showFilters = false;
              });
            },
          ),
         
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: _showFilters ? 60 : 50,
            child: IconButton(
              icon: const Icon(Icons.filter_alt),
              onPressed: () {
                setState(() {
                  _showFilters = !_showFilters;
                });
              },
            ),
          ),
          if (_showFilters)
            Row(
              children: [
                const SizedBox(width: 5),
                ElevatedButton(
                
                  onPressed: () {
                   
                  },
                  child: const Text('Price'),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  
                  onPressed: () {
                   
                  },
                  child: const Text('Recently Added'),
                ),
                const SizedBox(width: 5),
              ],
            ),
        ],
      ),
    );
  }
}
