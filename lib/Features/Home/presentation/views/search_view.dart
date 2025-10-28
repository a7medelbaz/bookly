import 'package:flutter/material.dart';

import 'widgets/search_textfiled.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() =>
      _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController _searchController =
      TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(
                      16.0,
                    ),
                    child: CustomSearchTextField(
                      controller:
                          _searchController,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
