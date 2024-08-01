-- Table: employees
CREATE TABLE employees (
    employeeid SERIAL PRIMARY KEY,
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    dateofbirth DATE,
    gender VARCHAR(10),
    maritalstatus VARCHAR(20),
    address VARCHAR(200),
    phone VARCHAR(15),
    email VARCHAR(100),
    hiredate DATE,
    position VARCHAR(100),
    department VARCHAR(100),
    supervisorid INT,
    status VARCHAR(20),
    CONSTRAINT fk_supervisor FOREIGN KEY (supervisorid) REFERENCES employees(employeeid)
);

-- Table: departments
CREATE TABLE departments (
    departmentid SERIAL PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100)
);

-- Table: positions
CREATE TABLE positions (
    positionid SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);

-- Table: salaries
CREATE TABLE salaries (
    salaryid SERIAL PRIMARY KEY,
    employeeid INT,
    startdate DATE,
    enddate DATE,
    amount DECIMAL(10, 2),
    CONSTRAINT fk_employee FOREIGN KEY (employeeid) REFERENCES employees(employeeid)
);

-- Table: attendances
CREATE TABLE attendances (
    attendanceid SERIAL PRIMARY KEY,
    employeeid INT,
    date DATE,
    checkintime TIME,
    checkouttime TIME,
    comments TEXT,
    CONSTRAINT fk_employee_attendance FOREIGN KEY (employeeid) REFERENCES employees(employeeid)
);

-- Table: evaluations
CREATE TABLE evaluations (
    evaluationid SERIAL PRIMARY KEY,
    employeeid INT,
    evaluationdate DATE,
    score INT,
    comments TEXT,
    CONSTRAINT fk_employee_evaluation FOREIGN KEY (employeeid) REFERENCES employees(employeeid)
);

-- Table: trainings
CREATE TABLE trainings (
    trainingid SERIAL PRIMARY KEY,
    employeeid INT,
    coursename VARCHAR(100),
    startdate DATE,
    enddate DATE,
    institution VARCHAR(100),
    comments TEXT,
    CONSTRAINT fk_employee_training FOREIGN KEY (employeeid) REFERENCES employees(employeeid)
);

-- Audit tables
CREATE TABLE employeechanges (
    changeid SERIAL PRIMARY KEY,
    employeeid INT,
    changedby VARCHAR(100),
    changedate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    changetype VARCHAR(50),
    oldvalue JSONB,
    newvalue JSONB,
    FOREIGN KEY (employeeid) REFERENCES employees(employeeid)
);

CREATE TABLE salarychanges (
    changeid SERIAL PRIMARY KEY,
    salaryid INT,
    employeeid INT,
    changedby VARCHAR(100),
    changedate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    changetype VARCHAR(50),
    oldvalue JSONB,
    newvalue JSONB,
    FOREIGN KEY (salaryid) REFERENCES salaries(salaryid),
    FOREIGN KEY (employeeid) REFERENCES employees(employeeid)
);

CREATE TABLE attendancechanges (
    changeid SERIAL PRIMARY KEY,
    attendanceid INT,
    employeeid INT,
    changedby VARCHAR(100),
    changedate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    changetype VARCHAR(50),
    oldvalue JSONB,
    newvalue JSONB,
    FOREIGN KEY (attendanceid) REFERENCES attendances(attendanceid),
    FOREIGN KEY (employeeid) REFERENCES employees(employeeid)
);

CREATE TABLE evaluationchanges (
    changeid SERIAL PRIMARY KEY,
    evaluationid INT,
    employeeid INT,
    changedby VARCHAR(100),
    changedate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    changetype VARCHAR(50),
    oldvalue JSONB,
    newvalue JSONB,
    FOREIGN KEY (evaluationid) REFERENCES evaluations(evaluationid),
    FOREIGN KEY (employeeid) REFERENCES employees(employeeid)
);

CREATE TABLE trainingchanges (
    changeid SERIAL PRIMARY KEY,
    trainingid INT,
    employeeid INT,
    changedby VARCHAR(100),
    changedate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    changetype VARCHAR(50),
    oldvalue JSONB,
    newvalue JSONB,
    FOREIGN KEY (trainingid) REFERENCES trainings(trainingid),
    FOREIGN KEY (employeeid) REFERENCES employees(employeeid)
);
