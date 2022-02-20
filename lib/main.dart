import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'data/local_data_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalDataStore.init();
  runApp(const MyApp());
}
