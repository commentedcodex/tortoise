import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';
import 'package:tortoise_assignment/product_details/viewmodel/product_details_viewmodel.dart';

class DevicePreviewCarousel extends StatefulWidget {
  const DevicePreviewCarousel({super.key});

  @override
  State<DevicePreviewCarousel> createState() => _DevicePreviewCarouselState();
}

class _DevicePreviewCarouselState extends State<DevicePreviewCarousel> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Selector<ProductDetailsViewModel, List<String>>(
      selector: (context, viewModel) => viewModel.product.previewImages,
      builder: (context, previewImages, child) {
        if (previewImages.isEmpty) {
          return const SizedBox.shrink();
        }

        return ColoredBox(
          color: AppColors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 280,
                width: double.infinity,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: previewImages.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      previewImages[index],
                      fit: BoxFit.contain,
                    );
                  },
                ),
              ),
              if (previewImages.length > 1)
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColors.grey500,
                    borderRadius: BorderRadius.circular(82),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(previewImages.length, (index) {
                      final isActive = _currentIndex == index;
                      return GestureDetector(
                        onTap:
                            () => _pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            ),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            color:
                                isActive ? AppColors.white : AppColors.grey600,
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
