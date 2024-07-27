import 'package:booky_app/core/errors/failures.dart';
import 'package:booky_app/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
   Future<Either<Failure, List<BookModel>>>  fetchFeatureBooks();
   Future<Either<Failure, List<BookModel>>>  fetchSimileBooksDetails({required String category});
}
