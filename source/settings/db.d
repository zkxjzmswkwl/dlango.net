
module settings.db;

import orm.db;
import d2sqlite3;

enum DB_PATH = "db.sqlite3";

DbConnection* getDbConnection() {
    return new Database(DB_PATH);
}
