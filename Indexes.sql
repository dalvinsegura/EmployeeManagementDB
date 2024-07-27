-- Índices para la tabla Employees
CREATE INDEX idx_employeeID ON Employees(employeeID);
CREATE INDEX idx_email ON Employees(email);
CREATE INDEX idx_department ON Employees(department);
CREATE INDEX idx_position ON Employees(position);
CREATE INDEX idx_supervisorID ON Employees(supervisorID);
CREATE INDEX idx_status ON Employees(status);

-- Índices para la tabla Departments
CREATE INDEX idx_departmentID ON Departments(departmentID);
CREATE INDEX idx_department_name ON Departments(name);

-- Índices para la tabla Positions
CREATE INDEX idx_positionID ON Positions(positionID);
CREATE INDEX idx_position_name ON Positions(name);

-- Índices para la tabla Salaries
CREATE INDEX idx_salary_employeeID ON Salaries(employeeID);
CREATE INDEX idx_salary_startDate ON Salaries(startDate);
CREATE INDEX idx_salary_endDate ON Salaries(endDate);

-- Índices para la tabla Attendances
CREATE INDEX idx_attendance_employeeID ON Attendances(employeeID);
CREATE INDEX idx_attendance_date ON Attendances(date);

-- Índices para la tabla Evaluations
CREATE INDEX idx_evaluation_employeeID ON Evaluations(employeeID);
CREATE INDEX idx_evaluation_date ON Evaluations(evaluationDate);

-- Índices para la tabla Trainings
CREATE INDEX idx_training_employeeID ON Trainings(employeeID);
CREATE INDEX idx_training_courseName ON Trainings(courseName);
CREATE INDEX idx_training_startDate ON Trainings(startDate);
CREATE INDEX idx_training_endDate ON Trainings(endDate);

