select a.APNT_NO, p.PT_NAME, p.PT_NO, d.MCDP_CD, d.DR_NAME, a.APNT_YMD
from PATIENT as p
join APPOINTMENT as a
join DOCTOR as d
on p.PT_NO = a.PT_NO and d.DR_ID = a.MDDR_ID
where date(a.APNT_YMD) = '2022-04-13' and a.MCDP_CD = 'CS' and a.APNT_CNCL_YN = 'N'
order by APNT_YMD

# 진료예약번호 환자이름 환자번호 진료과코드 의사이름 진료예약일시