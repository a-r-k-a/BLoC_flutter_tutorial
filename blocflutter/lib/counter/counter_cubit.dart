import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  // constructor: get initial state
  CounterCubit(super.initialState);

  //increment
  void increment() => emit(state + 1);

  //decrement
  void decrement() => emit(state - 1);

  //on state change - do something
  @override  
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}
