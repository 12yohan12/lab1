ALTER TABLE schedule 
DROP CONSTRAINT fk_schedule_group;

ALTER TABLE schedule 
ADD CONSTRAINT fk_schedule_group 
FOREIGN KEY (group_number) REFERENCES groups (group_number) 
ON DELETE CASCADE;

