import 'package:dartz/dartz.dart';
import 'package:spotify2/core/usercase/usecase.dart';
import 'package:spotify2/data/repositary/song/song_repositary_impl.dart';
import 'package:spotify2/service_locator.dart';

class GetPlayListUseCase implements useCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SongRepositaryImpl>().getPlayList();
  }
}
