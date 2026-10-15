-- This is a comment. I will build a simple database.
-- 
-- 

CREATE TABLE fitsfiles (

    id              INTEGER PRIMARY KEY,                   -- The id that can be referenced in other tables.
    target          TEXT NOT NULL,                          -- NOT NULL means this column cannot be empty.
    telescope       TEXT NOT NULL,                          -- 'HST'
    kind            TEXT NOT NULL CHECK (kind IN ('image', 'cube')),
    archive         TEXT NOT NULL,
    download_link   TEXT NOT NULL UNIQUE                    -- 'UNIQUE means the text here cannot be identical to others'
    -- Add more here... This is temporary.
);

CREATE INDEX idx_files_target ON fitsfiles(target);
CREATE INDEX idx_files_kind ON fitsfiles(kind);

CREATE TABLE meta (key TEXT PRIMARY KEY, value TEXT NOT NULL);