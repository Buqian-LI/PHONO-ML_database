PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;

-- with one line representing only one character/transcription match.
CREATE TABLE matchesMC (
    id INTEGER PRIMARY KEY,
    character TEXT NOT NULL, -- not unique + single
    transcription TEXT NOT NULL, -- not unique + single
    fanqie TEXT, -- not unique + single
    sixtuple TEXT NOT NULL, -- not unique + single
    reference TEXT NOT NULL -- not unique + single, id of transcriptions 
)

-- with one line representing one character and all of its matching transcriptions.
CREATE TABLE charactersMC (
    id INTEGER PRIMARY KEY,
    character TEXT NOT NULL,  -- not unique + single
    transcriptions TEXT NOT NULL,  -- not unique + multiple
    fanqie TEXT,  -- not unique + multiple
    sixtuples TEXT NOT NULL,  -- not unique + multiple
    identifiers TEXT NOT NULL  -- not unique + multiple
)

-- with one line representing one transcription and all of its matching characters.
CREATE TABLE transcriptionsMC (
    identifier INTEGER PRIMARY KEY, -- unique, id for transcriptions
    transcription TEXT NOT NULL, -- unique
    characters TEXT NOT NULL, -- not unique + multiple, list of characters
    sixtuple TEXT NOT NULL, -- unique
    fanqie TEXT, -- unique
    UNIQUE(identifier, transcription, fanqie, sixtuple)
)

COMMIT;
