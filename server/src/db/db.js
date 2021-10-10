var sqlite3 = require('sqlite3').verbose()
var md5 = require('md5')

const DBSOURCE = "db.sqlite"

let db = new sqlite3.Database(DBSOURCE, (err) => {
    if (err) {
        // Cannot open database
        console.error(err.message)
        throw err
    } else {
        console.log('Connected to the SQLite database.')
        db.run(`CREATE TABLE Transfer (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            amount FLOAT,  
            senderName TEXT, 
            createdAt TEXT)`,
            (err) => {
                if (err) {
                    // Table already created
                    console.log('Database already exists');
                }
            });
    }
});


export default db;