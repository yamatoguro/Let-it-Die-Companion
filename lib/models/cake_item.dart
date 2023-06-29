class CakeItem {
  int? id;
  String type;
  int rarity;
  int quantity;

  CakeItem(
    this.id, {
    required this.type,
    required this.rarity,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'rarity': rarity,
      'quantity': quantity,
    };
  }

  @override
  String toString() {
    return 'CakeItem{id: $id, type: $type, rarity: $rarity, quantity: $quantity}';
  }
}
