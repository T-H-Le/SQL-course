/* TRANSACTION (Transacción) */ 
-- Agupa varias operaciones para que se ejecuten todas o ninguna.
/* Inicia una nueva transacción. Desde de este punto, todas las modificaciones realizadas en la 
base de datos son temporales y solo son visibles dentro de esta transacción */
START TRANSACTION

/* Finaliza una transacción con éxito. Cuando se ejecuta, todos los cambios realizados en la base de datos
durante la transacción actual de hacen permanentes y visibles. */
COMMIT

/* Deshace las operaciones realizadas en una transacción, revirtiendo la base de datos al estado en que se encontraba
antes de iniciar la transacción */
ROLLBACK

-- Ejemplo de transferencia bancaria
 START TRANSACTION;
 UPDATE cuentas SET saldo = saldo -100 WHERE id = 1 ; -- resta a A 
 UPDATE cuentas SET saldo = saldo + 100 WHERE id = 2; -- suma a B 
 
 COMMIT; -- si algo falla antes de estom se hace ROLLBACK y no se aplica nada
	