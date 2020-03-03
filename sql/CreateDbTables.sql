/* Creating very simple hit log table*/
CREATE TABLE HitLog (
	ID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Hit int NOT NULL,
	HitTimestamp Datetime NOT NULL
);

