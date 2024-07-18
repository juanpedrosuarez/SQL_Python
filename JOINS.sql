--SQL
SELECT * 
FROM tabela1 
LEFT JOIN tabela2 ON tabela1.id = tabela2.id 
WHERE nome = 'Juan';

--Python
--Realiza o LEFT JOIN
merged_df = pd.merge(df1, df2, on='id', how='left')

--Filtra pelo nome
filtered_df = merged_df[merged_df['nome'] == 'Juan']

