import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify2/core/configs/constants/app_urls.dart';
import 'package:spotify2/presentation/home/bloc/news_songs_cubit.dart';
import '../../../domain/entities/song/song.dart';
import '../bloc/news_song_state.dart';

class NewsSongs extends StatelessWidget {
  const NewsSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsSongsCubit()..getNewsSongs(),
      child: SizedBox(
        height: 200,
        child: BlocBuilder<NewsSongsCubit, NewsSongsState>(
          builder: (context, state) {
            if (state is NewsSongsLoaded) {
              return _songs(state.songs);
            }
            if (state is NewsSongsLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is NewsSongsLoadFailure) {
              return const Center(child: Text('Failed to load songs'));
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _songs(List<SongEntity> songs) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final song = songs[index]; // Directly use the song object
        final imageUrl =
            '${AppUrls.firestorage}${song.artist} -  ${song.title}.jpg${AppUrls.mediaAlt}';

        return SizedBox(
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrl),
                    ),
                  ),
                  // Removed unnecessary null check
                ),
              ),
              const SizedBox(height: 10),
              Text(
                song.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 14),
      itemCount: songs.length,
    );
  }
}
