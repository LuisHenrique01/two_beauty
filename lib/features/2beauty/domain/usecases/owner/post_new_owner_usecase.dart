import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:two_beauty/core/error/failures.dart';
import 'package:two_beauty/core/usecase/usecase.dart';
import 'package:two_beauty/features/2beauty/domain/entities/owner_entity.dart';
import 'package:two_beauty/features/2beauty/domain/repositories/owner_repository.dart';

@injectable
class PostNewOwnerUsecase extends UseCase<OwnerEntity, OwnerEntity> {
  final OwnerRepository _ownerRepository;

  PostNewOwnerUsecase(this._ownerRepository);

  @override
  Future<Either<Failure, OwnerEntity>> call(OwnerEntity params) async {
    return await _ownerRepository.postNewOwner(params);
  }
}
