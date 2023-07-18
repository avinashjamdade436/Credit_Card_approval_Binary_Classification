
# 1. Group the customers based on their income type and find the average of their annual income.

SELECT  Type_Income, ROUND(AVG(Annual_income),2) AS Average_of_their_annual_income FROM credit_card GROUP BY Type_Income;


# 2. Find the female owners of cars and property.

SELECT * FROM credit_card WHERE GENDER = 'F' AND Car_Owner = 'Y' AND Property_Owner = 'Y';


# 3. Find the male customers who are staying with their families.

SELECT * FROM credit_card WHERE GENDER = 'M' AND Housing_type = 'With parents';


# 4. Please list the top five people having the highest income.

SELECT * FROM credit_card ORDER BY Annual_income DESC LIMIT 5;


# 5. How many married people are having bad credit?

SELECT * FROM credit_card WHERE Marital_status = 'Married' AND label = 1;


# 6. What is the highest education level and what is the total count?

SELECT EDUCATION AS Highest_Education, COUNT(*) AS Total_count FROM credit_card WHERE EDUCATION = 'Academic degree';


# 7. Between married males and females, who is having more bad credit?

SELECT COUNT(*) AS Total_number_of_bad_credit, (GENDER) FROM credit_card WHERE GENDER = 'M' 
AND Marital_status = 'Married' AND label = 1
UNION
SELECT COUNT(*), (GENDER) FROM credit_card WHERE GENDER = 'F' AND Marital_status = 'Married' AND label = 1; 