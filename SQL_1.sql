WITH Dates AS
 (
      SELECT GETDATE() AS DateStart

      UNION ALL

      SELECT DATEADD(DAY, FLOOR(RAND(checksum(newid()))*(7-2+1)+2), DateStart) AS DateStart 
      FROM Dates
    )
   
SELECT TOP 100 DateStart
FROM Dates
OPTION (MAXRECURSION 0);
    
   