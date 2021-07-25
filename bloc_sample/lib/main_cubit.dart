import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    print(change);
    super.onChange(change);
  }
}

Future<void> main(List<String> args) async {
  final cubit = CounterCubit();

  final streamSubscription = cubit.stream.listen(print);

  cubit
    ..increment()
    ..increment()
    ..decrement();

  await Future.delayed(Duration.zero); //
  await streamSubscription.cancel();
  await cubit.close();
}
