abstract class useCase<Type, Params> {
  Future<Type> call({Params params});
}
