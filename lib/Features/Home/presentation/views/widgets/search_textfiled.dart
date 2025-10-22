import 'package:flutter/material.dart';

class CustomSearchTextField
    extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onSearchPressed;
  final Color? backgroundColor;
  final Color? iconColor;

  const CustomSearchTextField({
    super.key,
    this.controller,
    this.hintText = 'Search...',
    this.onChanged,
    this.onSearchPressed,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  State<CustomSearchTextField> createState() =>
      _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState
    extends State<CustomSearchTextField> {
  @override
  void initState() {
    super.initState();
    // 👇 Rebuild whenever text changes
    widget.controller?.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Colors.white.withValues(
            alpha: 0.5,
          ),

          fontSize: 16,
        ),
        prefixIcon: Icon(
          Icons.search,
          color:
              widget.iconColor ??
              Colors.white.withValues(alpha: 0.7),
          size: 24,
        ),
        suffixIcon:
            widget.controller != null &&
                widget.controller!.text.isNotEmpty
            ? IconButton(
                icon: Icon(
                  Icons.clear,
                  color:
                      widget.iconColor ??
                      Colors.white.withValues(
                        alpha: 0.7,
                      ),
                ),
                onPressed: () {
                  widget.controller?.clear();
                  if (widget.onChanged != null) {
                    widget.onChanged!('');
                    setState(() {});
                  }
                },
              )
            : null,
        filled: true,
        fillColor:
            widget.backgroundColor ??
            Colors.white.withValues(alpha: 0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.white.withValues(
              alpha: 0.3,
            ),
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
    );
  }
}

// Usage Example:
//
// class SearchExample extends StatefulWidget {
//   @override
//   State<SearchExample> createState() => _SearchExampleState();
// }
//
// class _SearchExampleState extends State<SearchExample> {
//   final TextEditingController _searchController = TextEditingController();
//
//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: CustomSearchTextField(
//         controller: _searchController,
//         hintText: 'Search books...',
//         onChanged: (value) {
//           print('Search query: $value');
//           // Implement your search logic here
//         },
//       ),
//     );
//   }
// }
