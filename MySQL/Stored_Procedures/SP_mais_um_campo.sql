CREATE DEFINER=`root`@`localhost` PROCEDURE `mais_um_campo`()
BEGIN
	DECLARE vQUANTIDADE INT;
    DECLARE vPRECO FLOAT;
    DECLARE vFATURAMENTOACUM FLOAT;
    DECLARE fim_do_cursor INT;
    DECLARE c CURSOR FOR
		SELECT INF.QUANTIDADE, INF.PRECO FROM ITENS_NOTAS_FISCAIS INF
        INNER JOIN NOTAS_FISCAIS NF
        ON NF.NUMERO = INF.NUMERO
        WHERE MONTH(NF.DATA_VENDA) = 1 AND YEAR(NF.DATA_VENDA) = 2017;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET fim_do_cursor = 1;
	OPEN c;
		SET fim_do_cursor = 0;
        SET vFATURAMENTOACUM = 0;
        WHILE fim_do_cursor = 0
		DO
            FETCH c INTO vQUANTIDADE, vPRECO;
            IF fim_do_cursor = 0 THEN
				SET vFATURAMENTOACUM = vFATURAMENTOACUM + (vQUANTIDADE * vPRECO);
			END IF;
		END WHILE;
	CLOSE c;
SELECT vFATURAMENTOACUM;
END