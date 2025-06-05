import 'package:flutter/material.dart';
import 'package:wapp_statistics/presentation/statistics/tabs/general_tab.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Nombre Chat',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            dividerHeight: 0,
            indicatorAnimation: TabIndicatorAnimation.elastic,
            tabs: <Tab>[
              Tab(icon: Icon(Icons.info_outlined), child: Text('General')),
              Tab(
                icon: Icon(Icons.filter_none_sharp),
                child: Text('Estadísticas'),
              ),
              Tab(icon: Icon(Icons.stacked_bar_chart), child: Text('Gráficos')),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            GeneralTab(),
            Center(child: Text('Estadísticas')),
            Center(child: Text('Gráficos')),
          ],
        ),
      ),
    );
  }
}
