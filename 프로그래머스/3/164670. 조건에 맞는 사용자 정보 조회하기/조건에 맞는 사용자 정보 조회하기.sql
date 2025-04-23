select U.USER_ID,U.NICKNAME,concat(U.CITY,' ',U.STREET_ADDRESS1,' ',STREET_ADDRESS2) as 전체주소, concat(substr(U.TLNO,1,3),'-',substr(U.TLNO,4,4),'-', substr(U.TLNO,8,4)) as 전화번호
from USED_GOODS_USER as U
join (select WRITER_ID 
      from USED_GOODS_BOARD 
      group by WRITER_ID 
      having count(WRITER_ID) >= 3) as B
on U.USER_ID = B.WRITER_ID
order by U.USER_ID desc;