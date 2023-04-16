SELECT *
FROM salestable s
JOIN customertable c
ON s.Customercode = c.CustomerCode
WHERE CustomerCountry IN ("Cameroon","USA","Togo");

SELECT StaffName,CustomerCountry,SUM(Profit) AS TotalProfit
FROM salestable s
LEFT JOIN customertable c
ON s.Customercode = c.CustomerCode
LEFT JOIN stafftable st
ON s.StaffCode = st.MatriculeNo
WHERE StaffName IN ("Emelda","Anita","Cynthia")
GROUP BY StaffName,CustomerCountry
ORDER BY CustomerCountry;

SELECT CustomerCountry,SUM(Profit) AS TotalProfit
FROM salestable s
LEFT JOIN customertable c
ON s.Customercode = c.CustomerCode
LEFT JOIN stafftable st
ON s.StaffCode = st.MatriculeNo
WHERE StaffName="Emelda"
GROUP BY CustomerCountry;