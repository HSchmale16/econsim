CREATE TABLE Accounts (
    id                  SERIAL PRIMARY KEY
);

CREATE TABLE Items (
    id                  SERIAL PRIMARY KEY,
    name                VARCHAR(90),
    attributes          JSON
);



CREATE TABLE Users (
    id                  SERIAL PRIMARY KEY,
    displayName         VARCHAR(90),
    accountId           INTEGER REFERENCES Accounts(id)
);

CREATE TABLE Shops (
    id                  SERIAL PRIMARY KEY,
    name                VARCHAR(90),
    accountId           INTEGER REFERENCES Accounts(id)
);



