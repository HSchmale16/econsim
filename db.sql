
CREATE TABLE Traders (
    id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE Users (
    id INTEGER PRIMARY KEY REFERENCES Traders(id),
    displayName VARCHAR(30)
);

CREATE TABLE Shops (
    id INTEGER PRIMARY KEY REFERENCES Traders(id),
    name VARCHAR(32)
);


CREATE TABLE MoneyTransactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    giverId INTEGER REFERENCES Traders(id),
    reciepentId INTEGER REFERENCES Traders(id),
    amount INTEGER
);


