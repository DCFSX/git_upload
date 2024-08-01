--2024/7/30:

--課堂練習5
SELECT SERIAL_NUMBER as 序號, HYDROGEN as 氫離子濃度指數, TURBIDITY as 濁度,  CHLORINE as 自由有效餘氧
From SQL_TAOYUAN_WATER
Where 
(SERIAL_NUMBER Between 521 and 529)
OR
(CHLORINE IN('0.76','0.77','0.66') AND HYDROGEN<>7.8 AND TURBIDITY=0.6)

--課堂練習6
SELECT DISTINCT place as 地點, serial_number as 序號, HYDROGEN as 氫離子濃度指數, TURBIDITY as 濁度, CHLORINE as 自由有效餘氫  
From SQL_TAOYUAN_WATER
Order By turbidity, serial_number DESC

--課堂練習7
SELECT 序號, 氫離子濃度指數, 濁度,  自由有效餘氧
FROM
(
SELECT SERIAL_NUMBER as 序號, HYDROGEN as 氫離子濃度指數, TURBIDITY as 濁度,  CHLORINE as 自由有效餘氧
From SQL_TAOYUAN_WATER
Where HYDROGEN  IN ('7.5','8')
AND CHLORINE>0.6 
AND Place='T22'
Union
SELECT SERIAL_NUMBER as 序號, HYDROGEN as 氫離子濃度指數, TURBIDITY as 濁度,  CHLORINE as 自由有效餘氧
From SQL_TAOYUAN_WATER
Where 
(SERIAL_NUMBER Between 521 and 529)
OR
(CHLORINE IN('0.76','0.77','0.66') AND HYDROGEN<>7.8 AND TURBIDITY=0.6)
)
Order BY 序號

--課堂練習8
SELECT a.序號, a.氫離子濃度指數, a.濁度,  a.自由有效餘氧, c.WATER_PURIFICATION_PLANT as 淨水廠, c.WATER_SUPPLY as 供水系統 , b.TOWNSHIP as 行政區, b.PLACE as 路段
FROM
(
SELECT PLACE, SERIAL_NUMBER as 序號, HYDROGEN as 氫離子濃度指數, TURBIDITY as 濁度,  CHLORINE as 自由有效餘氧, WATER_SYSTEM
From SQL_TAOYUAN_WATER
Where HYDROGEN  IN ('7.5','8')
AND CHLORINE>0.6 
AND Place='T22'
Union
SELECT PLACE, SERIAL_NUMBER as 序號, HYDROGEN as 氫離子濃度指數, TURBIDITY as 濁度,  CHLORINE as 自由有效餘氧, WATER_SYSTEM
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

--課堂練習9
SELECT 
    Place as 地區,
    Count(*) AS 地區總筆數,
    Max(CHLORINE) AS 最大自由有效餘氫,
    Min(CHLORINE) AS 最小自由有效餘氫,
    Sum(HYDROGEN) as 氫離子濃度指數總和,
    AVG(TURBIDITY) as 濁度平均
FROM SQL_TAOYUAN_WATER
Where Place IN('T40','T44','T16')
Group by Place
Order By --用case when自訂順序
    case 
        when place = 'T40' Then 1
        when place = 'T44' Then 2
        when place = 'T16' Then 3
End

/*
Oracle DB:
(1)SYSDATE為當前的日期和時間
(2)TO_CHAR(SYSDATE, 'YYYYMM')將日期轉換為YYYYMM格式的字符串
(3)||為字符串接
(4)SUBSTR(EMP_ID, -5)獲取EMP_ID的最後五個字符
*/
SELECT EMP_ID, EMP_NM, ID, ('E' || TO_CHAR(SYSDATE, 'YYYYMM') || SUBSTR(EMP_ID, -5)) AS 新行編
FROM SQL_EMP1

--課後練習
/*
Group by a.CUST_ID, b.Name: 根據客戶編號與客戶名字
計算Count(b.Name), SUM(a.Money)
*/
SELECT a.CUST_ID as 客戶編號, b.Name as 客戶名稱, Count(b.Name) as 總購買次數, SUM(a.Money) as 總購買金額
FROM SQL_ORDER a
Inner Join SQL_CUSTOMER_STORE b 
ON a.CUST_ID=b.CUSTOMER_ID
Group by a.CUST_ID, b.Name

insert into SQL_EMP1 (EMP_ID, EMP_NM, ID, TEL, DEP)
Values('00038569','李Ｏ拉','C100200100',null,'企業資訊處')

--以後型別( )直接填數字
CREATE TABLE SQL_DEP(
DEP NVARCHAR2(20),
LEADER CHAR(8),
ADDR NVARCHAR2(20)
);
INSERT INTO SQL_DEP Values ('系統開發部','00010001','瑞光路510號');
INSERT INTO SQL_DEP Values ('開發系統部','00013579','瑞光路510號');