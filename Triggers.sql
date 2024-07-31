-- Trigger: Employees
CREATE OR REPLACE FUNCTION log_employee_change() RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO EmployeeChanges (employeeID, changedBy, changeType, newValue)
        VALUES (NEW.employeeID, current_user, 'INSERT', row_to_json(NEW));
        RETURN NEW;
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO EmployeeChanges (employeeID, changedBy, changeType, oldValue, newValue)
        VALUES (NEW.employeeID, current_user, 'UPDATE', row_to_json(OLD), row_to_json(NEW));
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        INSERT INTO EmployeeChanges (employeeID, changedBy, changeType, oldValue)
        VALUES (OLD.employeeID, current_user, 'DELETE', row_to_json(OLD));
        RETURN OLD;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER employee_change_trigger
AFTER INSERT OR UPDATE OR DELETE ON Employees
FOR EACH ROW EXECUTE FUNCTION log_employee_change();

-- Trigger: Salaries
CREATE OR REPLACE FUNCTION log_salary_change() RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO SalaryChanges (salaryID, employeeID, changedBy, changeType, newValue)
        VALUES (NEW.salaryID, NEW.employeeID, current_user, 'INSERT', row_to_json(NEW));
        RETURN NEW;
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO SalaryChanges (salaryID, employeeID, changedBy, changeType, oldValue, newValue)
        VALUES (NEW.salaryID, NEW.employeeID, current_user, 'UPDATE', row_to_json(OLD), row_to_json(NEW));
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        INSERT INTO SalaryChanges (salaryID, employeeID, changedBy, changeType, oldValue)
        VALUES (OLD.salaryID, OLD.employeeID, current_user, 'DELETE', row_to_json(OLD));
        RETURN OLD;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER salary_change_trigger
AFTER INSERT OR UPDATE OR DELETE ON Salaries
FOR EACH ROW EXECUTE FUNCTION log_salary_change();

-- Trigger: Attendances
CREATE OR REPLACE FUNCTION log_attendance_change() RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO AttendanceChanges (attendanceID, employeeID, changedBy, changeType, newValue)
        VALUES (NEW.attendanceID, NEW.employeeID, current_user, 'INSERT', row_to_json(NEW));
        RETURN NEW;
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO AttendanceChanges (attendanceID, employeeID, changedBy, changeType, oldValue, newValue)
        VALUES (NEW.attendanceID, NEW.employeeID, current_user, 'UPDATE', row_to_json(OLD), row_to_json(NEW));
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        INSERT INTO AttendanceChanges (attendanceID, employeeID, changedBy, changeType, oldValue)
        VALUES (OLD.attendanceID, OLD.employeeID, current_user, 'DELETE', row_to_json(OLD));
        RETURN OLD;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER attendance_change_trigger
AFTER INSERT OR UPDATE OR DELETE ON Attendances
FOR EACH ROW EXECUTE FUNCTION log_attendance_change();

-- Trigger: Evaluations
CREATE OR REPLACE FUNCTION log_evaluation_change() RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO EvaluationChanges (evaluationID, employeeID, changedBy, changeType, newValue)
        VALUES (NEW.evaluationID, NEW.employeeID, current_user, 'INSERT', row_to_json(NEW));
        RETURN NEW;
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO EvaluationChanges (evaluationID, employeeID, changedBy, changeType, oldValue, newValue)
        VALUES (NEW.evaluationID, NEW.employeeID, current_user, 'UPDATE', row_to_json(OLD), row_to_json(NEW));
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        INSERT INTO EvaluationChanges (evaluationID, employeeID, changedBy, changeType, oldValue)
        VALUES (OLD.evaluationID, OLD.employeeID, current_user, 'DELETE', row_to_json(OLD));
        RETURN OLD;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER evaluation_change_trigger
AFTER INSERT OR UPDATE OR DELETE ON Evaluations
FOR EACH ROW EXECUTE FUNCTION log_evaluation_change();

-- Trigger: Trainings
CREATE OR REPLACE FUNCTION log_training_change() RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO TrainingChanges (trainingID, employeeID, changedBy, changeType, newValue)
        VALUES (NEW.trainingID, NEW.employeeID, current_user, 'INSERT', row_to_json(NEW));
        RETURN NEW;
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO TrainingChanges (trainingID, employeeID, changedBy, changeType, oldValue, newValue)
        VALUES (NEW.trainingID, NEW.employeeID, current_user, 'UPDATE', row_to_json(OLD), row_to_json(NEW));
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        INSERT INTO TrainingChanges (trainingID, employeeID, changedBy, changeType, oldValue)
        VALUES (OLD.trainingID, OLD.employeeID, current_user, 'DELETE', row_to_json(OLD));
        RETURN OLD;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER training_change_trigger
AFTER INSERT OR UPDATE OR DELETE ON Trainings
FOR EACH ROW EXECUTE FUNCTION log_training_change();
