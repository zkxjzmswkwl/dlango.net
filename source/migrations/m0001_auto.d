module migrations.m0001_auto;

import orm.migration;
import orm.db;

class Migration_m0001 : Migration {
    override void up(DbConnection db) {
        db.execute(`CREATE TABLE song (artist TEXT NOT NULL, id INTEGER PRIMARY KEY, title TEXT NOT NULL)`);
    }

    override void down(DbConnection db) {
        // don't care
    }
}
