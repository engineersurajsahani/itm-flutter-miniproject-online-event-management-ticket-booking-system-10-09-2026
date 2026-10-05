import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:eventhub/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables
  await dotenv.load(fileName: ".env");

  // Initialize Supabase
  await Supabase.initialize(
    url: 'https://iguwstxqlzufaflnhehz.supabase.co',
    publishableKey: 'sb_publishable_f8KMRlik7PIZaBea3hXp7A_IjB84d8v',
  );

  runApp(const ProviderScope(child: EventHubApp()));
}
