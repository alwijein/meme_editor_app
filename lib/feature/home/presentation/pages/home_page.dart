import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_editor_app/feature/home/presentation/cubits/home_cubit.dart';
import 'package:meme_editor_app/feature/home/presentation/widgets/meme_grid.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Meme Editor',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        actions: [
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Switch(
                value: context.read<HomeCubit>().isOfflineMode,
                activeColor: Colors.lightGreen,
                onChanged: (value) {
                  context.read<HomeCubit>().toggleOfflineMode(value);
                },
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: context.read<HomeCubit>().searchMemes,
              decoration: InputDecoration(
                hintText: 'Cari meme...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeLoading) {
                  return Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1,
                          ),
                      itemCount: 9,
                      itemBuilder: (context, index) =>
                          Container(color: Colors.white),
                    ),
                  );
                }
                if (state is HomeError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.message),
                        ElevatedButton(
                          onPressed: () =>
                              context.read<HomeCubit>().fetchMemes(),
                          child: const Text('Coba Lagi'),
                        ),
                      ],
                    ),
                  );
                }
                if (state is HomeLoaded) {
                  return RefreshIndicator(
                    onRefresh: () => context.read<HomeCubit>().fetchMemes(),
                    child: MemeGrid(memes: state.memes),
                  );
                }
                return const Center(child: Text('Tidak ada meme ditemukan'));
              },
            ),
          ),
        ],
      ),
    );
  }
}
