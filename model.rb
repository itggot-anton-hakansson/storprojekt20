db = SQLite3::Database.new("db/db_storprojekt.db")
db.results_as_hash = true

def db()
    db = SQLite3::Database.new("db/db_storprojekt.db")
    db.results_as_hash = true
    return db
end
    

def create_scheme(text)
    db.execute("INSERT INTO schemes (scheme_name) VALUES (?)", text)

end

def modify_scheme(text)
    db.execute("UPDATE schemes SET (scheme_name, exc, exc_set, exc_reps VALUES (?,?,?,?"),