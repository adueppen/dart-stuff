class Node<E> {
  E data;
  Node<E> prev, next;

  Node(this.data, this.prev, this.next);
}

class LinkedList<E> {
  var _first, _last;
  var _length = 0;

  int get length => _length;

  void addFirst(E data) {
    var temp = new Node<E>(data, null, _first);
    _first == null? _last = temp: _first.prev = temp;
    _first = temp;
    ++_length;
  }

  void addLast(E data) {
    var temp = new Node<E>(data, _last, null);
    _last == null? _first = temp: _last.next = temp;
    _last = temp;
    ++_length;
  }

  @override
  toString() {
    var out = "";
    for (var temp = _first; temp != null; temp = temp.next) {
      out += "${temp.data}${temp.next == null? "": ", "}";
    }
    return out;
  }
}
