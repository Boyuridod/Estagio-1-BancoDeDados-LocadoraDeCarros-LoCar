USE safe_account;

START TRANSACTION;
UPDATE acc SET balance = balance - 50000 WHERE id = 1;
UPDATE acc SET balance = balance + 50000 WHERE id = 2;
COMMIT;
ROLLBACK;