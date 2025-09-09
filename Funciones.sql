USE Gimnasio;

DELIMITER //
CREATE FUNCTION EstadoPlanAbono(Idsocio INT, FechaHoy DATE)
RETURNS Varchar (50)
DETERMINISTIC
BEGIN
	DECLARE estado VARCHAR(20);
	SELECT IF(MAX(FechaLimite) >= FechaHoy, "Activo", "Vencido")
    INTO estado
    FROM PlanSocio
    WHERE idsocio = idsocio;

	RETURN estado;
END //
DELIMITER ;

SELECT EstadoPlanAbono(1, CURDATE()) AS Estado_Socio;


DELIMITER //
CREATE FUNCTION CalcularIMC(Peso FLOAT, Altura FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	RETURN Peso / (Altura * Altura);
END //
DELIMITER ;

SELECT CalcularIMC(Peso, Altura) AS IMC FROM FichaSocio;