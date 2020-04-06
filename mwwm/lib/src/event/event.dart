import 'package:rxdart/rxdart.dart';

///Событие, которое может принимать некоторое значение
abstract class Event<T> {
  Observable get stream;

  Future<void> accept([T data]);
}

///Событие, которое имеет несколько состояний
abstract class EntityEvent<T> {
  Future<void> content([T data]);

  Future<void> loading();

  Future<void> error([Exception error]);
}