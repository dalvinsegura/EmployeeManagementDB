SELECT insert_employee(
    'Juan', 'Pérez', 'juan.perez@example.com', '809-555-1234', '2023-01-15', 'Recursos Humanos', 'Asistente de Recursos Humanos', 1, 'Active'
);

SELECT insert_employee(
    'María', 'Gómez', 'maria.gomez@example.com', '809-555-5678', '2023-02-20', 'Finanzas', 'Contador', 2, 'Active'
);

SELECT insert_employee(
    'Pedro', 'Rodríguez', 'pedro.rodriguez@example.com', '809-555-9876', '2023-03-10', 'Ventas', 'Representante de Ventas', 3, 'Active'
);

SELECT insert_employee(
    'Ana', 'Fernández', 'ana.fernandez@example.com', '809-555-6543', '2023-04-05', 'Marketing', 'Especialista en Marketing Digital', 4,  'Active'
);

SELECT insert_employee(
    'Luis', 'Martínez', 'luis.martinez@example.com', '809-555-3210', '2023-05-25', 'Tecnología de la Información', 'Analista de Sistemas', 5,  'Active'
);

SELECT insert_employee(
    'Carmen', 'López', 'carmen.lopez@example.com', '809-555-7890', '2023-06-15', 'Operaciones', 'Supervisor de Producción', 6,  'Active'
);

SELECT insert_employee(
    'José', 'Santos', 'jose.santos@example.com', '809-555-1111', '2023-07-10', 'Servicio al Cliente', 'Agente de Servicio al Cliente', 7,  'Active'
);

SELECT insert_employee(
    'Francisco', 'García', 'francisco.garcia@example.com', '809-555-3333', '2023-09-15', 'Producción', 'Ingeniero de Calidad', 9,  'Active'
);

SELECT insert_employee(
    'Isabel', 'Méndez', 'isabel.mendez@example.com', '809-555-4444', '2023-10-01', 'Investigación y Desarrollo', 'Gerente General', 10,  'Active'
);

-- Update employee
SELECT update_employee(
    2, 'Juan', 'Pérez', 'juan.perez@example.com', '809-555-1234', '2023-01-15', 'Recursos Humanos', 'Asistente de Recursos Humanos', 1,  'Active',
    '1990-04-15', 'Male', 'Single', 'Calle 1, Santo Domingo'
);

SELECT update_employee(
    3, 'María', 'Gómez', 'maria.gomez@example.com', '809-555-5678', '2023-02-20', 'Finanzas', 'Contador', 2,  'Active',
    '1985-06-22', 'Female', 'Married', 'Calle 2, Santo Domingo'
);

SELECT update_employee(
    4, 'Pedro', 'Rodríguez', 'pedro.rodriguez@example.com', '809-555-9876', '2023-03-10', 'Ventas', 'Representante de Ventas', 3,  'Active',
    '1992-08-05', 'Male', 'Single', 'Calle 3, Santiago'
);

SELECT update_employee(
    5, 'Ana', 'Fernández', 'ana.fernandez@example.com', '809-555-6543', '2023-04-05', 'Marketing', 'Especialista en Marketing Digital', 4,  'Active',
    '1988-12-30', 'Female', 'Married', 'Calle 4, Santo Domingo'
);

SELECT update_employee(
    6, 'Luis', 'Martínez', 'luis.martinez@example.com', '809-555-3210', '2023-05-25', 'Tecnología de la Información', 'Analista de Sistemas', 5, 'Active',
    '1991-11-11', 'Male', 'Single', 'Calle 5, Santo Domingo'
);

SELECT update_employee(
    7, 'Carmen', 'López', 'carmen.lopez@example.com', '809-555-7890', '2023-06-15', 'Operaciones', 'Supervisor de Producción', 6,  'Active',
    '1984-01-25', 'Female', 'Married', 'Calle 6, La Romana'
);

SELECT update_employee(
    8, 'José', 'Santos', 'jose.santos@example.com', '809-555-1111', '2023-07-10', 'Servicio al Cliente', 'Agente de Servicio al Cliente', 7,  'Active',
    '1993-03-18', 'Male', 'Single', 'Calle 7, Santiago'
);

SELECT update_employee(
    9, 'Francisco', 'García', 'francisco.garcia@example.com', '809-555-3333', '2023-09-15', 'Producción', 'Ingeniero de Calidad', 9, 'Active',
    '1990-09-29', 'Male', 'Single', 'Calle 9, San Pedro de Macorís'
);

SELECT update_employee(
    10, 'Isabel', 'Méndez', 'isabel.mendez@example.com', '809-555-4444', '2023-10-01', 'Investigación y Desarrollo', 'Gerente General', 10,  'Active',
    '1987-05-16', 'Female', 'Married', 'Calle 10, Santo Domingo'
);




