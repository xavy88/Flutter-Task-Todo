import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/providers.dart';
import 'package:todo_app/utils/extensions.dart';
import 'package:todo_app/utils/task_categories.dart';
import 'package:todo_app/widgets/circle_container.dart';

class SelectCategory extends ConsumerWidget {
  const SelectCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(categoryProvider);
    final categories = TaskCategories.values.toList();
    return SizedBox(
      height: 40,
      child: Row(children: [
        Text(
          'Categories',
          style: context.textTheme.titleLarge,
        ),
        const SizedBox(width: 10),
        Expanded(
            child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return InkWell(
                    onTap: () {
                      ref.read(categoryProvider.notifier).state = category;
                    },
                    borderRadius: BorderRadius.circular(30),
                    child: CircleContainer(
                      color: category.color.withOpacity(0.3),
                      child: Icon(category.icon,
                          color: category == selectedCategory
                              ? context.colorScheme.primary
                              : category.color),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemCount: categories.length))
      ]),
    );
  }
}
