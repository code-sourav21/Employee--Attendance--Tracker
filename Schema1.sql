-- Departments table
CREATE TABLE Departments (
    DeptID SERIAL PRIMARY KEY,
    DeptName TEXT NOT NULL
);

-- Employees table
CREATE TABLE Employees (
    EmpID SERIAL PRIMARY KEY,
    Name TEXT NOT NULL,
    DeptID INT REFERENCES Departments(DeptID),
    JoinDate DATE
);

-- Attendance table
CREATE TABLE Attendance (
    AttendID SERIAL PRIMARY KEY,
    EmpID INT REFERENCES Employees(EmpID),
    Date DATE NOT NULL,
    InTime TIME,
    OutTime TIME,
    Status TEXT
);