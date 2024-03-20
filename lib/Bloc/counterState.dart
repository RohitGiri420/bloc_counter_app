class counterState {
  int count;
  counterState({required this.count});
}

class initialState extends counterState{
  initialState():super(count: 0);
}