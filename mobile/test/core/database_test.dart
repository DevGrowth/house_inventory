import 'package:flutter_test/flutter_test.dart';
import 'package:house_inventory/core/database.dart';

main() {
  AppDatabase database = AppDatabase(urlDatabase: "app.db");

  test("Database Connection", () async {
    var db = await database.open("app.db");
    expect(db, isNotNull);
  });
}
