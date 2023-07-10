class StoreModel {
  final String store_name,
      store_address,
      hours,
      day,
      date_time,
      open_time,
      close_time;
  final int id, user_id;

  StoreModel({
    required this.store_name,
    required this.id,
    required this.user_id,
    required this.store_address,
    required this.hours,
    required this.day,
    required this.date_time,
    required this.open_time,
    required this.close_time,
  });

  factory StoreModel.fromJson(Map<String, dynamic> json) {
    return StoreModel(
        id: json['id'],
        user_id: json['user_id'],
        store_name: json['store_name'],
        store_address: json['store_address'],
        hours: json['hours'],
        day: json['day'],
        date_time: json['date_time'],
        open_time: json['open_time'],
        close_time: json['close_time']);
  }
}
