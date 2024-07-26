CREATE TABLE Employees (
    employeeID SERIAL PRIMARY KEY,
    firstName VARCHAR(100),
    lastName VARCHAR(100),
    dateOfBirth DATE,
    gender VARCHAR(10),
    maritalStatus VARCHAR(20),
    address VARCHAR(200),
    phone VARCHAR(15),
    email VARCHAR(100),
    hireDate DATE,
    position VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2),
    supervisorID INT,
    status VARCHAR(20),
    CONSTRAINT fk_supervisor FOREIGN KEY (supervisorID) REFERENCES Employees(employeeID)
);

-- Table: Departments
CREATE TABLE Departments (
    departmentID SERIAL PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100)
);

-- Table: Positions
CREATE TABLE Positions (
    positionID SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);

-- Table: Salaries
CREATE TABLE Salaries (
    salaryID SERIAL PRIMARY KEY,
    employeeID INT,
    startDate DATE,
    endDate DATE,
    amount DECIMAL(10, 2),
    CONSTRAINT fk_employee FOREIGN KEY (employeeID) REFERENCES Employees(employeeID)
);

-- Table: Attendances
CREATE TABLE Attendances (
    attendanceID SERIAL PRIMARY KEY,
    employeeID INT,
    date DATE,
    checkInTime TIME,
    checkOutTime TIME,
    comments TEXT,
    CONSTRAINT fk_employee_attendance FOREIGN KEY (employeeID) REFERENCES Employees(employeeID)
);

-- Table: Evaluations
CREATE TABLE Evaluations (
    evaluationID SERIAL PRIMARY KEY,
    employeeID INT,
    evaluationDate DATE,
    score INT,
    comments TEXT,
    CONSTRAINT fk_employee_evaluation FOREIGN KEY (employeeID) REFERENCES Employees(employeeID)
);

-- Table: Trainings
CREATE TABLE Trainings (
    trainingID SERIAL PRIMARY KEY,
    employeeID INT,
    courseName VARCHAR(100),
    startDate DATE,
    endDate DATE,
    institution VARCHAR(100),
    comments TEXT,
    CONSTRAINT fk_employee_training FOREIGN KEY (employeeID) REFERENCES Employees(employeeID)
);


