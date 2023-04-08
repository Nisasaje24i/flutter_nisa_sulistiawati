import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:coba/model/contact.dart';
import 'package:coba/bloc/counter_event.dart';
import 'package:coba/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initialState()) {
    on<AddContactEvent>((event, emit) {
      List<Contact> tambahContact = List.of(state.contacts);
      tambahContact
          .add(Contact(name: event.name, phoneNumber: event.phoneNumber));
      emit(CounterState(contacts: tambahContact));
    });
  }
}

@override
Stream<CounterState> mapEventToState(
  CounterEvent event,
) async* {}
