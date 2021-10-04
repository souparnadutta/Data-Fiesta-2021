/* 
    TABLES MERGED - ITEMMASTER, ITEMBRANCH, PRODUCTGROUP, PRODUCTLINE, PRODUCTSUBGROUP 
    File Name - PRODUCT_MERGER.xlxs
*/
/* SQL COMMAND */

SELECT ITEMMASTER.[Master Planning Family],ITEMMASTER.[Product Type],ITEMMASTER.[Product Department],ITEMMASTER.[Product Group],ITEMMASTER.[Product Price Group],PRODUCTGROUP.[Product Group Desc],ITEMMASTER.[Product Line],PRODUCTLINE.[Product Line Desc],ITEMMASTER.[Product Sub Group],PRODUCTSUBGROUP.[Product Sub Group Desc],ITEMMASTER.[Short Name],ITEMBRANCH.*
FROM ITEMMASTER

JOIN PRODUCTGROUP
ON ITEMMASTER.[Product Group] = PRODUCTGROUP.[Product Group]

JOIN PRODUCTLINE
ON ITEMMASTER.[Product Line] = PRODUCTLINE.[Product Line]

JOIN PRODUCTSUBGROUP
ON ITEMMASTER.[Product Sub Group] = PRODUCTSUBGROUP.[Product Sub Group]

JOIN ITEMBRANCH 
ON ITEMMASTER.[Short Name] = ITEMBRANCH.[Short Name]

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/* 
    TABLES MERGED - BUDGET, CUSTOMERS, DIVISION, REGION 
    File Name - MERGEALL.xlxs
*/
/* SQL COMMAND */

SELECT BUDGET.*, CUSTOMERS.*, DIVISION.[Division Name] , REGION.[Region Name]
FROM CUSTOMERS 
JOIN DIVISION 
ON CUSTOMERS.Division = Division.Division
JOIN REGION
ON CUSTOMERS.[Region Code] = REGION.[Region Code]
JOIN BUDGET
ON BUDGET.[Customer Number] = CUSTOMERS.[Customer Number]
ORDER BY BUDGET.[Customer Number], BUDGET.BudgetYear,BUDGET.BudgetPeriod

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/* 
    TABLES MERGED - SALESDETAILS, SALESREPS 
    File Name - MERGEALL.xlxs
*/
/* SQL COMMAND */

SELECT SALESDETAILS.*,SALESREP.[Sales Rep Name] 
FROM SALESDETAILS
JOIN SALESREP
ON SALESDETAILS.[Sales Rep] = SALESREP.[Sales Rep]
