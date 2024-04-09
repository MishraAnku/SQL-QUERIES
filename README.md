# SQL-QUERIES
BASIC SQL QUERIES 
SQL (Structured Query Language) is a powerful tool for managing and manipulating data in relational database management systems (RDBMS). SQL queries are statements used to perform tasks such as retrieving data from a database, updating data, deleting data, and more. 

brief explanation of some common SQL queries:

1. SELECT: This query is used to retrieve data from one or more tables in a database. It allows you to specify the columns you want to retrieve and can include conditions to filter the results. For example:
   ```sql
   SELECT column1, column2 FROM table_name WHERE condition;
   ```

2. INSERT: This query is used to add new records (rows) to a table in the database. You specify the table name and the values for each column in the new record. For example:
   ```sql
   INSERT INTO table_name (column1, column2) VALUES (value1, value2);
   ```

3. UPDATE: This query is used to modify existing records in a table. You specify the table name, the columns to be updated, and the new values. You can also include a WHERE clause to specify which records should be updated. For example:
   ```sql
   UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;
   ```

4. DELETE: This query is used to remove records from a table. You specify the table name and can include a WHERE clause to specify which records should be deleted. For example:
   ```sql
   DELETE FROM table_name WHERE condition;
   ```

5. JOIN: This query is used to retrieve data from multiple tables based on a related column between them. There are several types of joins, including INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN, which determine how records are combined from the tables. For example:
   ```sql
   SELECT table1.column1, table2.column2 FROM table1 INNER JOIN table2 ON table1.common_column = table2.common_column;
   ```

6. GROUP BY: This query is used to group rows that have the same values into summary rows, typically to apply aggregate functions (like SUM, COUNT, AVG) to each group. For example:
   ```sql
   SELECT column1, SUM(column2) FROM table_name GROUP BY column1;
   ```

7. ORDER BY: This query is used to sort the result set by one or more columns in ascending or descending order. For example:
   ```sql
   SELECT column1, column2 FROM table_name ORDER BY column1 ASC, column2 DESC;
   ```

These are just a few examples of common SQL queries. SQL is a vast language with many features and capabilities for managing and querying data in databases. Practice and experimentation are key to mastering it.
