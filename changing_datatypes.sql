USE school_funding;

DESCRIBE school_funding;

-- Change the column data types
ALTER TABLE school_funding
MODIFY COLUMN year INT;

ALTER TABLE school_funding
MODIFY COLUMN leaid INT;

ALTER TABLE school_funding
MODIFY COLUMN ppcstot DECIMAL(10, 2);

ALTER TABLE school_funding
MODIFY COLUMN predcost DECIMAL(10, 2);

ALTER TABLE school_funding
MODIFY COLUMN fundinggap DECIMAL(10, 2);

-- For outcomegap first handle missing values with a default value NULL
UPDATE school_funding
SET outcomegap = NULL
WHERE outcomegap = '';

ALTER TABLE school_funding
MODIFY COLUMN outcomegap DECIMAL(15, 8);

ALTER TABLE school_funding
MODIFY COLUMN enroll INT;

ALTER TABLE school_funding
MODIFY COLUMN pov DECIMAL(15, 8);

-- For iep first handle missing values with a default value NULL
UPDATE school_funding
SET iep = NULL
WHERE iep = '';

ALTER TABLE school_funding
MODIFY COLUMN iep DECIMAL(15, 8);

-- For ell first handle missing values with a default value NULL
UPDATE school_funding
SET ell = NULL
WHERE ell = '';

ALTER TABLE school_funding
MODIFY COLUMN ell DECIMAL(15, 8);

ALTER TABLE school_funding
MODIFY COLUMN amind DECIMAL(15, 8);

ALTER TABLE school_funding
MODIFY COLUMN asian DECIMAL(15, 8);

ALTER TABLE school_funding
MODIFY COLUMN black DECIMAL(15, 8);

ALTER TABLE school_funding
MODIFY COLUMN hisp DECIMAL(15, 8);

-- For multi first handle missing values with a default value NULL
UPDATE school_funding
SET multi = NULL
WHERE multi = '';

ALTER TABLE school_funding
MODIFY COLUMN multi DECIMAL(15, 8);

-- For pac first handle missing values with a default value NULL
UPDATE school_funding
SET pac = NULL
WHERE pac = '';

ALTER TABLE school_funding
MODIFY COLUMN pac DECIMAL(15, 8);

ALTER TABLE school_funding
MODIFY COLUMN white DECIMAL(15, 8);
