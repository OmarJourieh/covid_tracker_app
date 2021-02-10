import 'package:covid_tracker_usa/models/covid_country_record.dart';
import 'package:covid_tracker_usa/models/covid_record.dart';
import 'package:covid_tracker_usa/models/state.dart';
import 'package:covid_tracker_usa/providers/covid_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class StateScreen extends StatelessWidget {
  final AmericanState state;
  StateScreen({this.state});
  CovidRecord _stateData;

  final formatter = new NumberFormat("#,###");
  @override
  Widget build(BuildContext context) {
    // _fillData(context);
    var _provider = Provider.of<CovidDataProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: height * 0.4,
                collapsedHeight: height * 0.1,
                floating: true,
                pinned: true,
                snap: true,
                actionsIconTheme: IconThemeData(opacity: 0.0),
                flexibleSpace: Stack(
                  children: <Widget>[
                    Positioned.fill(
                        child: Image.asset(
                      state.image,
                      fit: BoxFit.cover,
                    ))
                  ],
                ),
              ),
            ];
          },
          body: Container(
            padding: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
            child: FutureBuilder(
              future: _provider.getRecentByState(state),
              builder: (context, snapshot) {
                var data = snapshot.data;
                if (snapshot.hasData) {
                  return SingleChildScrollView(
                    child: _dataColumn(data, width),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _dataColumn(data, width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _dataRecord("State", state.name, width),
        _div(width),
        _dataRecord("Total Cases",
            formatter.format(data.positive ?? -1).toString(), width),
        _div(width),
        _dataRecord("New Cases",
            formatter.format(data.positiveIncrease ?? -1).toString(), width),
        _div(width),
        _dataRecord("Negative Tests",
            formatter.format(data.negative ?? -1).toString(), width),
        _div(width),
        _dataRecord("New Negative Results",
            formatter.format(data.negativeIncrease ?? -1).toString(), width),
        _div(width),
        _dataRecord(
            "Total Deaths", formatter.format(data.death ?? -1).toString(), width),
        _div(width),
        _dataRecord("New Deaths",
            formatter.format(data.deathIncrease ?? -1).toString(), width),
        _div(width),
        _dataRecord("Hospitalized",
            formatter.format(data.hospitalized ?? -1).toString(), width),
        _div(width),
        _dataRecord("Currently in ICU",
            formatter.format(data.inIcuCurrently ?? -1).toString(), width),
        _div(width),
        _dataRecord("Last Update (ET)", data.lastUpdateEt ?? -1, width),
        _div(width),
      ],
    );
  }

  Widget _div(width) {
    return Divider(
      color: Colors.grey,
      indent: width * 0.15,
      endIndent: width * 0.15,
    );
  }

  Widget _dataRecord(name, value, width) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),
            Text(value == "-1" ? "N/A" : value),
          ],
        ),
      ),
    );
  }
}
