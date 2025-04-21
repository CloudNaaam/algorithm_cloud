-- 코드를 입력하세요
select WAREHOUSE_ID,WAREHOUSE_NAME,ADDRESS,if(FREEZER_YN is null or FREEZER_YN = 'N', 'N','Y') from FOOD_WAREHOUSE where ADDRESS like '경기도%' 