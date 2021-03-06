USE SUCOS_VENDAS;

SELECT (23+((25-2)/2)*45) AS RESULTADO;

SELECT CEILING(12.3333333333333) AS RESULTADO;

SELECT ROUND(12.7777773333333333333) AS RESULTADO;

SELECT FLOOR(12.7777773333333333333) AS RESULTADO;

SELECT RAND() AS RESULTADO;

SELECT NUMERO, QUANTIDADE, PRECO, QUANTIDADE*PRECO AS FATURAMENTO FROM ITENS_NOTAS_FISCAIS;

SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE*PRECO,2) AS FATURAMENTO FROM ITENS_NOTAS_FISCAIS;

SELECT * FROM NOTAS_FISCAIS;
SELECT * FROM ITENS_NOTAS_FISCAIS;

SELECT YEAR(DATA_VENDA), 
  ROUND(SUM(((INF.PRECO * INF.QUANTIDADE)*NF.IMPOSTO)),2) AS IMPOSTO_A_PAGAR
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA)= 2016
GROUP BY YEAR(DATA_VENDA);

SELECT YEAR(DATA_VENDA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) AS TOTAL_IMPOSTO
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA);