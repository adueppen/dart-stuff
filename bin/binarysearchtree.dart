class _Node<E extends Comparable<E>> {
  E value;
  _Node<E> left, right;

  _Node(this.value, [this.left = null, this.right = null]);
}

class BinarySearchTree<E extends Comparable<E>> {
  _Node _root;

  void insert(E value) {
    _Node<E> function(_Node<E> root, E value) {
      if (root == null) {
        return new _Node<E>(value);
      } else if (value.compareTo(root.value) <= 0) {
        root.left = function(root.left, value);
      } else if (value.compareTo(root.value) > 0) {
        root.right = function(root.right, value);
      }
      return root;
    }
    _root = function(_root, value);
  }

  String orderedString() {
    String function(_Node<E> root) => root == null? "": function(root.left) + root.value.toString() + "\n" + function(root.right);
    return function(_root);
  }

  int get length {
    int function(_Node<E> root) => root == null? 0: function(root.left) + 1 + function(root.right);
    return function(_root);
  }
}