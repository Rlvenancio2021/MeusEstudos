CREATE DEFINER=`root`@`localhost` PROCEDURE `quantidade_notas`(vData DATE)
BEGIN

DECLARE vNumNotas FLOAT;
SELECT COUNT(*) INTO vNumNotas FROM NOTAS_FISCAIS WHERE DATA_VENDA = vData;
SELECT vNumNotas;

END