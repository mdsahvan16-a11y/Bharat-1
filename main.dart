import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: BharatDairyApp()));
}

final localeProvider = StateProvider<Locale>((ref) => const Locale('hi', 'IN'));

class BharatDairyApp extends ConsumerWidget {
  const BharatDairyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeProvider);
    return MaterialApp(
      title: 'Bharat Dairy (भारत डेरी)',
      debugShowCheckedModeBanner: false,
      locale: currentLocale,
      supportedLocales: const [Locale('hi', 'IN'), Locale('en', 'US')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E40AF)),
        textTheme: GoogleFonts.muktaTextTheme(),
      ),
      home: const DairyHomeScreen(),
    );
  }
}

class DairyHomeScreen extends StatelessWidget {
  const DairyHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('भारत डेरी (Bharat Dairy)')),
      body: const Center(child: Text('Bharat Dairy Android Application')),
    );
  }
}
