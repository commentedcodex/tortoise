// import 'package:flutter/material.dart';
// import 'package:tortoise_assignment/common/styles/app_colors.dart';
// import 'package:tortoise_assignment/common/styles/text_theme.dart';

// class ExpandableImageWidget extends StatefulWidget {
//   final String imageUrl;
//   final double collapsedHeight;
//   final double expandedHeight;

//   const ExpandableImageWidget({
//     super.key,
//     required this.imageUrl,
//     this.collapsedHeight = 300,
//     this.expandedHeight = 500,
//   });

//   @override
//   State<ExpandableImageWidget> createState() => _ExpandableImageWidgetState();
// }

// class _ExpandableImageWidgetState extends State<ExpandableImageWidget>
//     with SingleTickerProviderStateMixin {
//   bool _isExpanded = false;
//   late AnimationController _animationController;
//   late Animation<double> _heightAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: const Duration(milliseconds: 300),
//       vsync: this,
//     );
//     _heightAnimation = Tween<double>(
//       begin: widget.collapsedHeight,
//       end: widget.expandedHeight,
//     ).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
//     );
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   void _toggleExpansion() {
//     setState(() {
//       _isExpanded = !_isExpanded;
//       if (_isExpanded) {
//         _animationController.forward();
//       } else {
//         _animationController.reverse();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       decoration: BoxDecoration(
//         color: AppColors.grey50,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: AppColors.grey200, width: 1),
//       ),
//       child: Column(
//         children: [
//           AnimatedBuilder(
//             animation: _heightAnimation,
//             builder: (context, child) {
//               return Container(
//                 height: _heightAnimation.value,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   color: AppColors.white,
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Stack(
//                     children: [
//                       // Background pattern/gradient
//                       Container(
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               AppColors.grey50,
//                               AppColors.grey100,
//                               AppColors.grey50,
//                             ],
//                           ),
//                         ),
//                       ),
//                       // Image placeholder
//                       Center(
//                         child: Container(
//                           width: 200,
//                           height: _heightAnimation.value * 0.8,
//                           decoration: BoxDecoration(
//                             color: AppColors.grey300,
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Icon(
//                             Icons.phone_iphone,
//                             size: _heightAnimation.value * 0.3,
//                             color: AppColors.grey600,
//                           ),
//                         ),
//                       ),
//                       // Subtle overlay for depth
//                       if (!_isExpanded)
//                         Positioned(
//                           bottom: 0,
//                           left: 0,
//                           right: 0,
//                           height: 60,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topCenter,
//                                 end: Alignment.bottomCenter,
//                                 colors: [
//                                   AppColors.white.withOpacity(0),
//                                   AppColors.white.withOpacity(0.8),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//           // View more/less button
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.symmetric(vertical: 12),
//             child: Center(
//               child: GestureDetector(
//                 onTap: _toggleExpansion,
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 16,
//                     vertical: 8,
//                   ),
//                   decoration: BoxDecoration(
//                     color: AppColors.white,
//                     borderRadius: BorderRadius.circular(20),
//                     border: Border.all(color: AppColors.grey300, width: 1),
//                     boxShadow: [
//                       BoxShadow(
//                         color: AppColors.black.withOpacity(0.05),
//                         blurRadius: 4,
//                         offset: const Offset(0, 2),
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         _isExpanded ? 'View less' : 'View more',
//                         style: AppTypography.bodyMedium.copyWith(
//                           color: AppColors.grey700,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       const SizedBox(width: 4),
//                       AnimatedRotation(
//                         turns: _isExpanded ? 0.5 : 0,
//                         duration: const Duration(milliseconds: 300),
//                         child: Icon(
//                           Icons.keyboard_arrow_down,
//                           size: 20,
//                           color: AppColors.grey700,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
