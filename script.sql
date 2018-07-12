
--I need to cross information from three tables, so I use INNER JOIN;
--The JOIN is a function very important when we want croos information betwen tables every time. So we need using one colunm of both tables that are correspondents;
--For my example, I used JOIN for complement information that exists in another table;
--I put a temporary name for columns and tables using Aliases;
--In the statment INNER JOIN we using the ON for condition where will we compare the columns that have equivalents values,
--So if one column it is written "sao paulo" and another "são paulo", they never will.
--we can use additional filters that are complementary to ON. For my example I used the filter AND.

SELECT ax.name_employee, ax.function, axf.name, ax.company, ax.salary FROM vw_employee_HR AS vw
	INNER JOIN aux_employee AS ax ON vw.name_employee = ax.name_employee
	INNER JOIN aux_responsable AS axf ON axf.unity = ax.company 
	AND axf.department = 'HR'