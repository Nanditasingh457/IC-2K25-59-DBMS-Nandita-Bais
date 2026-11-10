 

-- Q1
CREATE TABLE countries_q1 (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT
);


-- Q2
CREATE TABLE IF NOT EXISTS countries_q2 (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT
);


-- Q3
CREATE TABLE dup_countries_q3 LIKE countries_q1;


-- Q4
INSERT INTO countries_q1 (country_id, country_name, region_id)
VALUES
(1, 'India', 1),
(2, 'Italy', 1),
(3, 'China', 2);

CREATE TABLE dup_countries_q4 AS
SELECT * FROM countries_q1;


-- Q5
CREATE TABLE countries_q5 (
    country_id INT NULL,
    country_name VARCHAR(50) NULL,
    region_id INT NULL
);


-- Q6
CREATE TABLE jobs_q6 (
    job_id VARCHAR(10),
    job_title VARCHAR(35),
    min_salary DECIMAL(6,0),
    max_salary DECIMAL(6,0),
    CHECK (max_salary <= 25000)
);


-- Q7
CREATE TABLE countries_q7 (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT,
    CHECK (country_name IN ('Italy', 'India', 'China'))
);


-- Q8
CREATE TABLE job_histry_q8 (
    employee_id INT,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(10),
    department_id INT
);


-- Q9
CREATE TABLE countries_q9 (
    country_id INT UNIQUE,
    country_name VARCHAR(50),
    region_id INT
);


-- Q10
CREATE TABLE jobs_q10 (
    job_id VARCHAR(10),
    job_title VARCHAR(35) DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);


-- Q11
CREATE TABLE countries_q11 (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50),
    region_id INT
);


-- Q12
CREATE TABLE countries_q12 (
    country_id INT AUTO_INCREMENT UNIQUE,
    country_name VARCHAR(50),
    region_id INT,
    PRIMARY KEY (country_id)
);


-- Q13
CREATE TABLE countries_q13 (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT,
    UNIQUE (country_id, region_id)
);


-- Q14
CREATE TABLE jobs_q14 (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35),
    min_salary DECIMAL(6,0),
    max_salary DECIMAL(6,0)
);

CREATE TABLE job_history_q14 (
    employee_id INT UNIQUE,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(10),
    department_id INT,
    FOREIGN KEY (job_id) REFERENCES jobs_q14(job_id)
);


-- Q15
CREATE TABLE departments_q15 (
    department_id DECIMAL(4,0) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    manager_id DECIMAL(6,0) NOT NULL,
    location_id DECIMAL(4,0),
    PRIMARY KEY (department_id, manager_id)
);

CREATE TABLE employees_q15 (
    employee_id INT UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(8,2),
    commission DECIMAL(4,2),
    manager_id DECIMAL(6,0),
    department_id DECIMAL(4,0),
    FOREIGN KEY (department_id, manager_id)
        REFERENCES departments_q15(department_id, manager_id)
);


-- Q16
CREATE TABLE jobs_q16 (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35),
    min_salary DECIMAL(6,0),
    max_salary DECIMAL(6,0)
);

CREATE TABLE departments_q16 (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(30)
);

CREATE TABLE employees_q16 (
    employee_id INT UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(8,2),
    commission DECIMAL(4,2),
    manager_id DECIMAL(6,0),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments_q16(department_id),
    FOREIGN KEY (job_id)
        REFERENCES jobs_q16(job_id)
) ENGINE=InnoDB;


-- Q17
CREATE TABLE jobs_q17 (
    job_id INT NOT NULL UNIQUE PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE employees_q17 (
    employee_id INT UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id INT,
    salary DECIMAL(8,2),
    FOREIGN KEY (job_id)
        REFERENCES jobs_q17(job_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;


-- Q18
CREATE TABLE jobs_q18 (
    job_id INT NOT NULL UNIQUE PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE employees_q18 (
    employee_id INT UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id INT,
    salary DECIMAL(8,2),
    FOREIGN KEY (job_id)
        REFERENCES jobs_q18(job_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
) ENGINE=InnoDB;


-- Q19
CREATE TABLE jobs_q19 (
    job_id INT NOT NULL UNIQUE PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE employees_q19 (
    employee_id INT UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id INT NULL,
    salary DECIMAL(8,2),
    FOREIGN KEY (job_id)
        REFERENCES jobs_q19(job_id)
        ON DELETE SET NULL
        ON UPDATE SET NULL
) ENGINE=InnoDB;


-- Q20
CREATE TABLE jobs_q20 (
    job_id INT NOT NULL UNIQUE PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE employees_q20 (
    employee_id INT UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id INT,
    salary DECIMAL(8,2),
    FOREIGN KEY (job_id)
        REFERENCES jobs_q20(job_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB;
