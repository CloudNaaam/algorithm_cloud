select y.CART_ID as CART_ID
from (select CART_ID, NAME from CART_PRODUCTS where NAME = 'Yogurt') as y
join (select CART_ID, NAME from CART_PRODUCTS where NAME = 'MILK') as m
on y.CART_ID = m.CART_ID