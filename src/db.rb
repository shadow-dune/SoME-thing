require 'sqlite3'

db = SQLite3::Database.new ":memory:"

db.execute <<-END
  CREATE TABLE IF NOT EXISTS POLL (
   a INT,
   b INT
  );
END

db.execute("INSERT INTO POLL VALUES (1,2),(3,4),(7,9)")

db.execute("SELECT * FROM POLL") do |row|
  p row
end
