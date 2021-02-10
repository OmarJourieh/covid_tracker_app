import 'dart:convert';

import 'package:covid_tracker_usa/models/covid_record.dart';
import 'package:covid_tracker_usa/models/state.dart';
import 'package:covid_tracker_usa/providers/states_provider.dart';
import 'package:covid_tracker_usa/src/screens/view_country.dart';
import 'package:covid_tracker_usa/src/screens/view_state.dart';
import 'package:covid_tracker_usa/src/utils/slide_left_route.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int n = 10;
  int _stateCount;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final statesProv = Provider.of<StatesProvider>(context, listen: true);
    _stateCount = statesProv.count;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/flags/us.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: _fab(statesProv, context),
        body: _stateList(statesProv, height, width),
      ),
    );
  }

  Widget _stateList(statesProv, height, width) {
    return LazyLoadScrollView(
      onEndOfPage: () async {
        await Future.delayed(const Duration(milliseconds: 0), () {
          print(_stateCount);
          _loadMore();
        });
      },
      child: ListView.builder(
        itemCount: n,
        itemBuilder: (context, index) {
          return _stateCard(statesProv, index, context, width, height);
        },
      ),
    );
  }

  Widget _stateCard(statesProv, index, context, width, height) {
    return GestureDetector(
      onTap: () {
        print(statesProv.states[index].tag);
        if (statesProv.states[index].tag == "us") {
          Navigator.of(context).push(
            slideLeft(
              CountryScreen(
                country: statesProv.states[index],
              ),
            ),
          );
        } else {
          Navigator.of(context).push(
            slideLeft(
              StateScreen(
                state: statesProv.states[index],
              ),
            ),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        child: ListTile(
          leading: _roundStateImage(statesProv, width, index),
          title: Text(
            statesProv.states[index].name,
            style: TextStyle(fontSize: width * 0.04),
          ),
        ),
      ),
    );
  }

  Widget _fab(statesProv, context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
      child: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {
          showSearch(
            context: context,
            delegate: Search(states: statesProv.states),
          );
        },
        child: Icon(
          Icons.search,
        ),
      ),
    );
  }

  _loadMore() {
    if (n + 5 < _stateCount) {
      setState(() {
        n += 5;
      });
    } else {
      setState(() {
        n += _stateCount - n;
      });
    }
  }

  Widget _roundStateImage(statesProv, width, index) {
    return Container(
      height: width * 0.15,
      width: width * 0.15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey[900], width: 2.0),
        image: DecorationImage(
          image: AssetImage(
            statesProv.states[index].image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Search extends SearchDelegate {
  List<AmericanState> states;
  Search({this.states});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
      SizedBox(width: 10.0),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.keyboard_arrow_left),
      onPressed: () {
        // Navigator.of(context).pop();
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<AmericanState> results = states
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return _searchResultTile(context, index, results, width);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<AmericanState> results = states
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return query.isEmpty
        ? Center(
            child: Text("Search by Name"),
          )
        : ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              return _searchResultTile(context, index, results, width);
            },
          );
  }

  Widget _searchResultTile(context, index, results, width) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          slideLeft(
            StateScreen(
              state: results[index],
            ),
          ),
        );
      },
      child: ListTile(
        title: Text(results[index].name),
        leading: _leadingImage(width, results, index),
      ),
    );
  }

  Widget _leadingImage(width, results, index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      height: width * 0.1,
      width: width * 0.1,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey[900], width: 2.0),
        image: DecorationImage(
          image: AssetImage(
            results[index].image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
