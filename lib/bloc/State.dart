class CounterState{}

class InitialState extends CounterState{}

class UpdatedState extends CounterState{
  int count;
  UpdatedState(this.count);
}