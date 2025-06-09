SELECT * FROM 131224_Koriahin.products;

-- 1. Функция для расчета площади круга

DELIMITER //

CREATE FUNCTION circle_area(radius DOUBLE)
RETURNS DOUBLE
DETERMINISTIC
BEGIN
    RETURN PI() * POW(radius, 2);
END;
//

DELIMITER ;

-- 2. Функция для расчета гипотенузы треугольника

DELIMITER //

CREATE FUNCTION hypotenuse(a DOUBLE, b DOUBLE)
RETURNS DOUBLE
DETERMINISTIC
BEGIN
    RETURN SQRT(POW(a, 2) + POW(b, 2));
END;
//

DELIMITER ;

