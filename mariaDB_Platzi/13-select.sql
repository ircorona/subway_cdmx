USE metro_cdmx;

-- Select All
SELECT * FROM `lines`;

-- Sort by column
SELECT id, name, color FROM `lines`;

-- Math operations with SELECT

SELECT (2 + 2);

SELECT (2 + 2) AS result;

SELECT AVG(year) AS year_avg FROM `trains`;

--Join Tables

SELECT 
`lines`.`name`,
`trains`.`serial_number`
FROM `lines`
INNER JOIN `trains`
ON `lines`.`id` = `trains`.`line_id`;
