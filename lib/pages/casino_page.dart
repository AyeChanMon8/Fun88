import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fun88_proj/widgets/carousel_slider_widget.dart';
import 'package:fun88_proj/widgets/tab_title_widget.dart';

import '../constants/data.dart';
import '../widgets/carousel_slider_widget_layout.dart';
import '../widgets/combined_indicator.dart';
import '../widgets/image_grid_view.dart';

class CasinoPage extends StatefulWidget {
  const CasinoPage({super.key});

  @override
  State<CasinoPage> createState() => _CasinoPageState();
}

class _CasinoPageState extends State<CasinoPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabItems.length, vsync: this);
    _tabController.addListener(() {
      setState(() {}); // Update selected state on tab change
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabItems.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(child: CarouselSliderWidget()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: CarouselSliderWidgetLayout()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.start,
                labelPadding: EdgeInsets.symmetric(horizontal: 12),
                indicator: CombinedIndicator(
                  underline: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.0, color: Colors.blue),
                    insets: EdgeInsets.zero,
                  ),
                  lineColor: primaryColor,
                  lineHeight: 30,
                  lineThickness: 1,
                ),
                tabs: List.generate(tabItems.length, (index) {
                  final item = tabItems[index];
                  return Tab(
                    child: TabTitleWidget(
                      selectedUrl: item['selected'],
                      unselectedUrl: item['unselected'],
                      name: item['label'],
                      isSelected: _tabController.index == index,
                      index: index,
                      notiCount: item['noti_count'],
                      isHot: item['is_hot'],
                    ),
                  );
                }),
              ),
            ),
          ],
          body: TabBarView(
            controller: _tabController,
            children: List.generate(tabItems.length, (index) {
              return ImageGridView(index: index);
            }),
          ),
        ),
      ),
    );
  }
}
