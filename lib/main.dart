import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Pastikan import ini ada
import 'package:meme_editor_app/feature/home/di/home_di.dart';
import 'package:meme_editor_app/feature/home/presentation/cubits/home_cubit.dart'; // Import HomeCubit
import 'package:meme_editor_app/feature/home/presentation/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencyInjection(); // Panggil DI setup
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meme Editor App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider(
        // Gunakan GetIt untuk mendapatkan instance HomeCubit
        create: (context) => sl<HomeCubit>()..fetchMemes(),
        child: const HomePage(),
      ),
    );
  }
}

Future<void> initDependencyInjection() async {
  await initHomeDI();
}
