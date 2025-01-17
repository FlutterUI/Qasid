import '../../core/either.dart';
import '../../core/error/failures.dart';
import '../../core/use_cases/use_case.dart';
import '../repositories/preferences_repository.dart';

class IsSourcesSelected extends UseCase<Either<Failure, bool>, NoParams> {
  IsSourcesSelected(this.repository);

  final PreferencesRepository repository;

  @override
  Either<Failure, bool> call(NoParams params) {
    return repository.isSourcesSelected;
  }
}
