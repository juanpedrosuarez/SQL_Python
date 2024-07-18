--SELECT EM SQL E PYTHON
SELECT column1, column2 FROM table;
--SELECT EM PYTHON
df[['column1', 'column2']]

--SQL
SELECT * FROM table WHERE column1 = 'value';
--PYTHON
df[df['column1'] == 'value']

  
--SQL
SELECT * FROM table ORDER BY column1 ASC;
--PYTHON
df.sort_values(by='column1', ascending=True)

  
--SQL
SELECT * FROM table WHERE column1 = 'value1' AND column2 = 'value2';
--PYTHON
df[(df['column1'] == 'value1') & (df['column2'] == 'value2')]

  
--SQL
SELECT column1, SUM(column2) FROM table GROUP BY column1;
--PYTHON
df.groupby('column1')['column2'].sum()

  
--SQL
SELECT COUNT(*) FROM table;
--PYTHON
len(df)
--PYTHON
df.shape[0]

  
--SQL
SELECT SUM(column) FROM table;
--PYTHON
df['column'].sum()

  
--SQL
SELECT AVG(column) FROM table;
--PYTHON
df['column'].mean()

  
--SQL
SELECT MIN(column) FROM table;
--PYTHON
df['column'].min()

  
--SQL
SELECT MAX(column) FROM table;
--PYTHON
df['column'].max()

  
--SQL
SELECT * FROM table1 JOIN table2 ON table1.column = table2.column;
--PYTHON
df1.merge(df2, on='column')
