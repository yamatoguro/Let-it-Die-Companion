class CakeItem {
  int id;
  String type;
  int rarity;
  int quantity;
  int current;

  CakeItem({
    required this.id,
    required this.type,
    required this.rarity,
    required this.quantity,
    required this.current,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'rarity': rarity,
      'quantity': quantity,
      'current': current,
    };
  }

  @override
  String toString() {
    return 'CakeItem{id: $id, type: $type, rarity: $rarity, quantity: $quantity, current: $current}';
  }
}
