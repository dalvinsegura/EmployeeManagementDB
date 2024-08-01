-- New Employee
CREATE OR REPLACE FUNCTION insert_employee(
    p_firstname VARCHAR,
    p_lastname VARCHAR,
    p_email VARCHAR,
    p_phonenumber VARCHAR,
    p_hiredate DATE,
    p_department VARCHAR,
    p_position VARCHAR,
    p_supervisorid INT,
    p_status VARCHAR
) RETURNS VOID AS $$
BEGIN
    INSERT INTO employees (firstname, lastname, email, phone, hiredate, department, position, supervisorid, status)
    VALUES (p_firstname, p_lastname, p_email, p_phonenumber, p_hiredate, p_department, p_position, p_supervisorid, p_status);
END;
$$ LANGUAGE plpgsql;

-- Update employee
CREATE OR REPLACE FUNCTION update_employee(
    p_employeeid INT,
    p_firstname VARCHAR,
    p_lastname VARCHAR,
    p_email VARCHAR,
    p_phonenumber VARCHAR,
    p_hiredate DATE,
    p_department VARCHAR,
    p_position VARCHAR,
    p_supervisorid INT,
    p_status VARCHAR,
    p_dateofbirth DATE,
    p_gender VARCHAR,
    p_maritalstatus VARCHAR,
    p_address VARCHAR
) RETURNS VOID AS $$
BEGIN
    UPDATE employees
    SET firstname = p_firstname,
        lastname = p_lastname,
        email = p_email,
        phone = p_phonenumber,
        hiredate = p_hiredate,
        department = p_department,
        position = p_position,
        supervisorid = p_supervisorid,
        status = p_status,
        dateofbirth = p_dateofbirth,
        gender = p_gender,
        maritalstatus = p_maritalstatus,
        address = p_address
    WHERE employeeid = p_employeeid;
END;
$$ LANGUAGE plpgsql;
