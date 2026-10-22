
CREATE TABLE groups (
    group_number VARCHAR(10) PRIMARY KEY,
    max_students INTEGER NOT NULL,
    faculty_code VARCHAR(10) NOT NULL,
    curator VARCHAR(30) NOT NULL
);


CREATE TABLE schedule (
    group_number VARCHAR(10) NOT NULL,
    lab_number VARCHAR(10) NOT NULL,
    discipline VARCHAR(50) NOT NULL,
    weekday VARCHAR(20) NOT NULL,
    lesson_number INTEGER NOT NULL,
    

    CONSTRAINT pk_schedule_new PRIMARY KEY (group_number, weekday, lesson_number),
    

    CONSTRAINT fk_schedule_group FOREIGN KEY (group_number) REFERENCES groups (group_number) ON DELETE CASCADE
);
