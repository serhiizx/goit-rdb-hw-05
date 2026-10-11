DROP FUNCTION IF EXISTS divider_func;

DELIMITER //

CREATE FUNCTION divider_func(param1 FLOAT, param2 FLOAT)
RETURNS FLOAT
BEGIN
	RETURN param1 / param2;
END //

DELIMITER ;

select 
	*, 
	divider_func(quantity, 2) as quantity_result 
from order_details