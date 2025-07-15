-- Monthly attendance summary
SELECT EmpID, COUNT(*) AS DaysPresent
FROM Attendance
WHERE Status = 'Present'
GROUP BY EmpID;

-- Late arrivals count
SELECT EmpID, COUNT(*) AS LateDays
FROM Attendance
WHERE Status = 'Late'
GROUP BY EmpID;

-- Department-wise attendance
SELECT D.DeptName, COUNT(A.AttendID) AS TotalAttendances
FROM Departments D
JOIN Employees E ON D.DeptID = E.DeptID
JOIN Attendance A ON E.EmpID = A.EmpID
GROUP BY D.DeptName;