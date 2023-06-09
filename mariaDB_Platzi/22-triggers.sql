USE metro_cdmx;

CREATE TRIGGER update_updated_at_field
BEFORE UPDATE
ON `lines`
FOR EACH ROW
SET NEW.updated_at = NOW();

--trigger for `stations`
USE metro_cdmx;

CREATE TRIGGER update_updated_at_field_stations
BEFORE UPDATE
ON `stations`
FOR EACH ROW
SET NEW.updated_at = NOW();
 -- trigger for `trains` 
 USE metro_cdmx;

CREATE TRIGGER update_updated_at_field_trains
BEFORE UPDATE
ON `trains`
FOR EACH ROW
SET NEW.updated_at = NOW();
--trigger for `lines_stations`
USE metro_cdmx;

CREATE TRIGGER update_updated_at_field_lines_stations
BEFORE UPDATE
ON `lines_stations`
FOR EACH ROW
SET NEW.updated_at = NOW();
-- Note I haven't update the last triggers into the DB `stations`, `lines_stations` & `trains` 