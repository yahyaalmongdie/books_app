
import 'package:bloc/bloc.dart';
import 'package:booky_app/features/home/data/model/book_model/book_model.dart';
import 'package:booky_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(errorMessage: failure.errMessage));
    }, (books) {
            emit(FeaturedBooksSuccess(books));

    });
  }
}
