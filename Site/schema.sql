DROP TABLE IF EXISTS users_data;
DROP TABLE IF EXISTS issue_history;

CREATE TABLE users_data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created DATE DEFAULT (datetime('now','localtime')),
    names TEXT NOT NULL,
    emails TEXT NOT NULL,
    passwords TEXT NOT NULL
);

CREATE TABLE issue_history (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created DATE DEFAULT (datetime('now','localtime')),
    names TEXT NOT NULL,
    mails TEXT NOT NULL,
    floors TEXT NOT NULL,
    rooms TEXT NOT NULL,
    pcs TEXT NOT NULL,
    subjects TEXT NOT NULL,
    descriptions TEXT NOT NULL
);