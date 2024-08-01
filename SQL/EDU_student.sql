--2024/7/30:

--�Ұ�m��5
SELECT SERIAL_NUMBER as �Ǹ�, HYDROGEN as �B���l�@�׫���, TURBIDITY as �B��,  CHLORINE as �ۥѦ��ľl��
From SQL_TAOYUAN_WATER
Where 
(SERIAL_NUMBER Between 521 and 529)
OR
(CHLORINE IN('0.76','0.77','0.66') AND HYDROGEN<>7.8 AND TURBIDITY=0.6)

--�Ұ�m��6
SELECT DISTINCT place as �a�I, serial_number as �Ǹ�, HYDROGEN as �B���l�@�׫���, TURBIDITY as �B��, CHLORINE as �ۥѦ��ľl�B  
From SQL_TAOYUAN_WATER
Order By turbidity, serial_number DESC

--�Ұ�m��7
SELECT �Ǹ�, �B���l�@�׫���, �B��,  �ۥѦ��ľl��
FROM
(
SELECT SERIAL_NUMBER as �Ǹ�, HYDROGEN as �B���l�@�׫���, TURBIDITY as �B��,  CHLORINE as �ۥѦ��ľl��
From SQL_TAOYUAN_WATER
Where HYDROGEN  IN ('7.5','8')
AND CHLORINE>0.6 
AND Place='T22'
Union
SELECT SERIAL_NUMBER as �Ǹ�, HYDROGEN as �B���l�@�׫���, TURBIDITY as �B��,  CHLORINE as �ۥѦ��ľl��
From SQL_TAOYUAN_WATER
Where 
(SERIAL_NUMBER Between 521 and 529)
OR
(CHLORINE IN('0.76','0.77','0.66') AND HYDROGEN<>7.8 AND TURBIDITY=0.6)
)
Order BY �Ǹ�

--�Ұ�m��8
SELECT a.�Ǹ�, a.�B���l�@�׫���, a.�B��,  a.�ۥѦ��ľl��, c.WATER_PURIFICATION_PLANT as �b���t, c.WATER_SUPPLY as �Ѥ��t�� , b.TOWNSHIP as ��F��, b.PLACE as ���q
FROM
(
SELECT PLACE, SERIAL_NUMBER as �Ǹ�, HYDROGEN as �B���l�@�׫���, TURBIDITY as �B��,  CHLORINE as �ۥѦ��ľl��, WATER_SYSTEM
From SQL_TAOYUAN_WATER
Where HYDROGEN  IN ('7.5','8')
AND CHLORINE>0.6 
AND Place='T22'
Union
SELECT PLACE, SERIAL_NUMBER as �Ǹ�, HYDROGEN as �B���l�@�׫���, TURBIDITY as �B��,  CHLORINE as �ۥѦ��ľl��, WATER_SYSTEM
From SQL_TAOYUAN_WATER
Where 
(SERIAL_NUMBER Between 521 and 529)
OR
(CHLORINE IN('0.76','0.77','0.66') AND HYDROGEN<>7.8 AND TURBIDITY=0.6)
)a
LEFT Join SQL_TAOYUAN_REGIONS b
ON a.Place = b.SERIAL
LEFT Join SQL_TAOYUAN_WATER_SYSTEM c
ON a.WATER_SYSTEM = c.SERIAL

--�Ұ�m��9
SELECT 
    Place as �a��,
    Count(*) AS �a���`����,
    Max(CHLORINE) AS �̤j�ۥѦ��ľl�B,
    Min(CHLORINE) AS �̤p�ۥѦ��ľl�B,
    Sum(HYDROGEN) as �B���l�@�׫����`�M,
    AVG(TURBIDITY) as �B�ץ���
FROM SQL_TAOYUAN_WATER
Where Place IN('T40','T44','T16')
Group by Place
Order By --��case when�ۭq����
    case 
        when place = 'T40' Then 1
        when place = 'T44' Then 2
        when place = 'T16' Then 3
End

/*
Oracle DB:
(1)SYSDATE����e������M�ɶ�
(2)TO_CHAR(SYSDATE, 'YYYYMM')�N����ഫ��YYYYMM�榡���r�Ŧ�
(3)||���r�Ŧ걵
(4)SUBSTR(EMP_ID, -5)���EMP_ID���̫᤭�Ӧr��
*/
SELECT EMP_ID, EMP_NM, ID, ('E' || TO_CHAR(SYSDATE, 'YYYYMM') || SUBSTR(EMP_ID, -5)) AS �s��s
FROM SQL_EMP1

--�ҫ�m��
/*
Group by a.CUST_ID, b.Name: �ھګȤ�s���P�Ȥ�W�r
�p��Count(b.Name), SUM(a.Money)
*/
SELECT a.CUST_ID as �Ȥ�s��, b.Name as �Ȥ�W��, Count(b.Name) as �`�ʶR����, SUM(a.Money) as �`�ʶR���B
FROM SQL_ORDER a
Inner Join SQL_CUSTOMER_STORE b 
ON a.CUST_ID=b.CUSTOMER_ID
Group by a.CUST_ID, b.Name

insert into SQL_EMP1 (EMP_ID, EMP_NM, ID, TEL, DEP)
Values('00038569','���ݩ�','C100200100',null,'���~��T�B')

--�H�᫬�O( )������Ʀr
CREATE TABLE SQL_DEP(
DEP NVARCHAR2(20),
LEADER CHAR(8),
ADDR NVARCHAR2(20)
);
INSERT INTO SQL_DEP Values ('�t�ζ}�o��','00010001','�����510��');
INSERT INTO SQL_DEP Values ('�}�o�t�γ�','00013579','�����510��');