import 'package:covid_tracker_usa/models/state.dart';
import 'package:flutter/material.dart';

class StatesProvider with ChangeNotifier {
  List<AmericanState> _states = [];
  int _count = 0;

  List<AmericanState> get states => _states;

  int get count => _count;

  void fillStates() async {
    if (_states.length == 0) {
      await _createStates();
      _count = _states.length;
      notifyListeners();
    }
  }

  _createStates() {
    _states.add(AmericanState(
        name: "USA", tag: "us", image: "assets/images/flags/us2.jpg"));
    _states.add(AmericanState(
        name: "Alabama", tag: "al", image: "assets/images/flags/al.png"));
    _states.add(AmericanState(
        name: "Arkansas", tag: "ar", image: "assets/images/flags/ar.png"));
    _states.add(AmericanState(
        name: "Arizona", tag: "az", image: "assets/images/flags/az.png"));
    _states.add(AmericanState(
        name: "California", tag: "ca", image: "assets/images/flags/ca.png"));
    _states.add(AmericanState(
        name: "Colorado", tag: "co", image: "assets/images/flags/co.png"));
    _states.add(AmericanState(
        name: "Cincinnati", tag: "ct", image: "assets/images/flags/ct.png"));
    _states.add(AmericanState(
        name: "Delaware", tag: "de", image: "assets/images/flags/de.png"));
    _states.add(AmericanState(
        name: "Florida", tag: "fl", image: "assets/images/flags/fl.png"));
    _states.add(AmericanState(
        name: "Georgia", tag: "ga", image: "assets/images/flags/ga.png"));
    _states.add(AmericanState(
        name: "Hawaii", tag: "hi", image: "assets/images/flags/hi.png"));
    _states.add(AmericanState(
        name: "Iowa", tag: "ia", image: "assets/images/flags/ia.png"));
    _states.add(AmericanState(
        name: "Idaho", tag: "id", image: "assets/images/flags/id.png"));
    _states.add(AmericanState(
        name: "Illinois", tag: "il", image: "assets/images/flags/il.png"));
    _states.add(AmericanState(
        name: "Indiana", tag: "in", image: "assets/images/flags/in.png"));
    _states.add(AmericanState(
        name: "Kansas", tag: "ks", image: "assets/images/flags/ks.png"));
    _states.add(AmericanState(
        name: "Kentucky", tag: "ky", image: "assets/images/flags/ky.png"));
    _states.add(AmericanState(
        name: "Louisiana", tag: "la", image: "assets/images/flags/la.png"));
    _states.add(AmericanState(
        name: "Massachusetts", tag: "ma", image: "assets/images/flags/ma.png"));
    _states.add(AmericanState(
        name: "Maryland", tag: "md", image: "assets/images/flags/md.png"));
    _states.add(AmericanState(
        name: "Maine", tag: "me", image: "assets/images/flags/me.png"));
    _states.add(AmericanState(
        name: "Michigan", tag: "mi", image: "assets/images/flags/mi.png"));
    _states.add(AmericanState(
        name: "Minnesota", tag: "mn", image: "assets/images/flags/mn.png"));
    _states.add(AmericanState(
        name: "Missouri", tag: "mo", image: "assets/images/flags/mo.png"));
    _states.add(AmericanState(
        name: "Mississippi", tag: "ms", image: "assets/images/flags/ms.png"));
    _states.add(AmericanState(
        name: "North Carolina", tag: "nc", image: "assets/images/flags/nc.png"));
    _states.add(AmericanState(
        name: "North Dakota", tag: "nd", image: "assets/images/flags/nd.png"));
    _states.add(AmericanState(
        name: "Nebraska", tag: "ne", image: "assets/images/flags/ne.png"));
    _states.add(AmericanState(
        name: "New Hampshire", tag: "nh", image: "assets/images/flags/nh.png"));
    _states.add(AmericanState(
        name: "New Jersey", tag: "nj", image: "assets/images/flags/nj.png"));
    _states.add(AmericanState(
        name: "New Mexico", tag: "nm", image: "assets/images/flags/nm.png"));
    _states.add(AmericanState(
        name: "Nevada", tag: "nv", image: "assets/images/flags/nv.png"));
    _states.add(AmericanState(
        name: "New York", tag: "ny", image: "assets/images/flags/ny.png"));
    _states.add(AmericanState(
        name: "Ohio", tag: "oh", image: "assets/images/flags/oh.png"));
    _states.add(AmericanState(
        name: "Oklahoma", tag: "ok", image: "assets/images/flags/ok.png"));
    _states.add(AmericanState(
        name: "Oregon", tag: "or", image: "assets/images/flags/or.png"));
    _states.add(AmericanState(
        name: "Pennsylvania", tag: "pa", image: "assets/images/flags/pa.png"));
    _states.add(AmericanState(
        name: "Rhode Island", tag: "ri", image: "assets/images/flags/ri.png"));
    _states.add(AmericanState(
        name: "South Carolina", tag: "sc", image: "assets/images/flags/sc.png"));
    _states.add(AmericanState(
        name: "South Dakota", tag: "sd", image: "assets/images/flags/sd.png"));
    _states.add(AmericanState(
        name: "Tennessee", tag: "tn", image: "assets/images/flags/tn.png"));
    _states.add(AmericanState(
        name: "Texas", tag: "tx", image: "assets/images/flags/tx.png"));
    _states.add(AmericanState(
        name: "Utah", tag: "ut", image: "assets/images/flags/ut.png"));
    _states.add(AmericanState(
        name: "Virginia", tag: "va", image: "assets/images/flags/va.png"));
    _states.add(AmericanState(
        name: "Vermont", tag: "vt", image: "assets/images/flags/vt.png"));
    _states.add(AmericanState(
        name: "Washington", tag: "wa", image: "assets/images/flags/wa.png"));
    _states.add(AmericanState(
        name: "West Virginia", tag: "wv", image: "assets/images/flags/wv.png"));
    _states.add(AmericanState(
        name: "Wyoming", tag: "wy", image: "assets/images/flags/wy.png"));
  }
}
