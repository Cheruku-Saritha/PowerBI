select * from Manuscripts
select * from Tasks
select * from Quality_Checks
select * from Client_Feedback

UPDATE Manuscripts
SET Submission_Date = CAST(Submission_Date AS DATE);

---Average time for the file completion
select AVG(DATEDIFF(Day,Submission_Date, Completion_Date))AS Average_Turnaround_Time
from Manuscripts
SELECT 
    Manuscript_ID,
    Submission_Date,
    Completion_Date,
    DATEDIFF(DAY, Submission_Date, Completion_Date) AS Turnaround_Time
FROM 
    Manuscripts;

	---maximum error count
select * from Quality_Checks

SELECT AVG(CAST(Error_Count AS INT)) AS Average_Error_Count
FROM Quality_Checks

ALTER TABLE Quality_Checks
ALTER COLUMN Error_Count INT;

-- Check Submission_Date format
SELECT TOP 10 Submission_Date FROM Manuscripts;

-- Check data type of Error_Count
EXEC sp_help 'Quality_Checks';

SELECT AVG(DATEDIFF(DAY, Submission_Date, Completion_Date)) AS Average_Turnaround_Time
INTO #AverageTurnaroundTime
FROM Manuscripts;

SELECT * FROM #AverageTurnaroundTime;


