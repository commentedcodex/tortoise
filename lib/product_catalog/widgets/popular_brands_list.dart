import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tortoise_assignment/product_catalog/viewmodel/product_catalog_viewmodel.dart';
import 'package:tortoise_assignment/product_catalog/widgets/brand_selection_tab.dart';

class PopularBrandsList extends StatelessWidget {
  const PopularBrandsList({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductCatalogProvider>(context);
    final popularBrands =
        provider.brands.where((brand) => brand.isPopular).toList();
    final selectedBrandId = provider.selectedBrandId;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text(
          'Search from popular brands',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(
          height: 76,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: popularBrands.length,
            itemBuilder: (context, index) {
              final brand = popularBrands[index];
              final selected = brand.id == selectedBrandId;

              return Padding(
                padding: EdgeInsets.only(
                  right: index == popularBrands.length - 1 ? 0 : 12,
                ),
                child: BrandSelectionTab(
                  selected: selected,
                  image: brand.image,
                  name: brand.name,
                  onTap: () => provider.selectBrand(brand.id),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
