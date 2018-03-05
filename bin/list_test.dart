import 'dart:io';
import 'linkedlist.dart';

void main() {
  LinkedList<int> test = new LinkedList<int>();
  test.addFirst(1);
  test.addFirst(0);
  test.addFirst(-1);
  test.addLast(2);
  test.addLast(3);
  stdout.writeln(test);
}