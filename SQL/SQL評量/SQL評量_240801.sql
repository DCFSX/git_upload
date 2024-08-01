--實作練習1為 Excel 檔案

--實作練習2
--建立 SQL_Village
create table SQL_Village(
  ID CHAR(4) primary key, 
  VillageAddress NVARCHAR2(15), 
  VillageTEL VARCHAR2(11), 
  Village NVARCHAR2(5)
);
COMMIT;
--建立 SQL_Branch
create table SQL_Branch(
  ID CHAR(4) primary key, 
  Branch NVARCHAR2(5), 
  BranchAddress NVARCHAR2(15), 
  BranchTEL CHAR(11)
);
COMMIT;
--建立 SQL_Category	
create table SQL_Category(
  ID CHAR(4) primary key, 
  Category NVARCHAR2(5)
);
COMMIT;
--建立 SQL_Master
create table SQL_Master(
  ID_C CHAR(4) references SQL_Category(ID), 
  ID_V CHAR(4) references SQL_Village(ID), 
  FacilityAddress NVARCHAR2(20) primary key, 
  PeopleCount NUMBER(5, 0), 
  UndergroundCount CHAR(2), 
  ID_B CHAR(4) references SQL_Branch(ID)
);
COMMIT;

--實作練習3
--新增資料至 SQL_Village
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C001', '竹南鎮公義路1035號', 
    '03 758 1072', '大埔里'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C002', '竹南鎮竹南里中山路 103 號', 
    '037-472735', '竹南里'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C003', '竹南鎮山佳里國光街 14 號', 
    '037-614186', '山佳里'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C004', '後龍鎮埔頂里中興路136-1號', 
    '037-724839', '埔頂里'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C005', '苗栗市綠苗里中正路 766 號', 
    '037-333240', '綠苗里'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C006', '民族里民族路96號', 
    '037-660001', '民族里'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C007', '忠孝里光大街82號', 
    '037-661145', '忠孝里'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C008', '信義里信義路53巷1號', 
    '037-616072', '信義里'
  );
COMMIT;
--新增資料至 SQL_Branch
insert INTO SQL_Branch(
  ID, Branch, BranchAddress, BranchTEL
) 
VALUES 
  (
    'M001', '竹南分局', '苗栗縣竹南鎮民族街72號', 
    '03 747 4796'
  );
insert INTO SQL_Branch(
  ID, Branch, BranchAddress, BranchTEL
) 
VALUES 
  (
    'M002', '苗栗分局', '苗栗縣苗栗市金鳳街109號', 
    '03 732 0059'
  );
insert INTO SQL_Branch(
  ID, Branch, BranchAddress, BranchTEL
) 
VALUES 
  (
    'M003', '頭份分局', '苗栗縣頭份市中興路503號', 
    '03 766 3004'
  );
COMMIT;
--新增資料至 SQL_Category
insert INTO SQL_Category(ID, Category) 
VALUES 
  ('D001', '公寓');
insert INTO SQL_Category(ID, Category) 
VALUES 
  ('D002', '大樓');
insert INTO SQL_Category(ID, Category) 
VALUES 
  ('D003', '公共設施');
insert INTO SQL_Category(ID, Category) 
VALUES 
  ('D004', '私營單位');
COMMIT;
--新增資料至 SQL_Master
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D001', 'C001', '苗栗縣竹南鎮中埔街20號', 
    100, '1', 'M001'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D002', 'C002', '苗栗縣竹南鎮和平街79號', 
    3142, '1', 'M001'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D002', 'C003', '苗栗縣竹南鎮龍山路三段142號', 
    1072, '1', 'M001'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D003', 'C004', '苗栗縣後龍鎮中華路1498號', 
    32, '1', 'M001'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D001', 'C005', '苗栗縣苗栗市米市街80號', 
    106, '1', 'M002'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D001', 'C005', '苗栗縣苗栗市光復路117號', 
    26, '1', 'M002'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D002', 'C005', '苗栗縣苗栗市博愛街109號', 
    2038, '2', 'M002'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D002', 'C005', '苗栗縣苗栗市大同路53號', 
    128, '2', 'M002'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D003', 'C006', '苗栗縣頭份市民族里和平路102號', 
    353, '1', 'M003'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D004', 'C007', '苗栗縣頭份市忠孝忠孝一路69號', 
    501, '1', 'M003'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D001', 'C008', '苗栗縣頭份市信義里中正路65號', 
    194, '1', 'M003'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D004', 'C008', '苗栗縣頭份市信義里中正路116號', 
    78, '1', 'M003'
  );
COMMIT;

--實作練習4
--4-1.列出 轄管 區域內有單一 避難設施大於 1000 容人數量的 轄管分局 及 分局連絡電話 。
SELECT 
  DISTINCT b.branch as 轄管分局, 
  b.branchtel as 分局連絡電話 
FROM 
  SQL_MASTER M 
  Left join SQL_Branch B ON M.ID_B = B.ID 
Where 
  m.peoplecount > 1000;
--4-2. 列出 轄管 區域內有單一 避難設施大於 1000 容人數量的 轄管分局 及 分局連絡電話 並 計算出 各 設施數量 。
SELECT 
  b.branch as 轄管分局, 
  b.branchtel as 分局連絡電話, 
  Count(m.facilityaddress) as 設施數量 
FROM 
  SQL_MASTER M 
  Left join SQL_Branch B ON M.ID_B = B.ID 
Where 
  m.peoplecount > 1000 
Group By 
  b.branch, 
  b.branchtel;
--4-3. 承上題， 再補上 避難設施地址 、 類型。
SELECT 
  b.branch as 轄管分局, 
  b.branchtel as 分局連絡電話, 
  m.FACILITYADDRESS as 避難設施地址, 
  C.Category as 類型, 
  Count(m.facilityaddress) as 設施數量 
FROM 
  SQL_MASTER M 
  Left join SQL_Category C ON M.ID_C = C.ID 
  Left join SQL_Branch B ON M.ID_B = B.ID 
Where 
  m.peoplecount > 1000 
Group By 
  b.branch, 
  b.branchtel, 
  b.branchtel, 
  m.FACILITYADDRESS, 
  C.Category;
--4-4. 查詢設施地址包含「中」字的避難設施，列出資料必須含 村里別 、 避難設施地址 、 容人數量 、 轄管分局 及 分局連絡電話。
SELECT 
  v.village as 村里別, 
  m.facilityaddress as 避難設施地址, 
  m.peoplecount as 容人數量, 
  b.branch as 轄管分局, 
  b.branchtel as 分局連絡電話 
FROM 
  SQL_MASTER M 
  Left join SQL_Village V ON M.ID_V = V.ID 
  Left join SQL_Branch B ON M.ID_B = B.ID 
Where 
  m.facilityaddress LIKE '%中%';
--4-5. 查詢 所有 類別 為 公寓及大樓 的 避難設施 列出 資料必須包含 村里別 、 村里辦公室位置 、 避難設施地址 、 容人數量 。
SELECT 
  v.village as 村里別, 
  v.villageaddress as 村里辦公室位置, 
  m.facilityaddress as 避難設施地址, 
  m.peoplecount as 容人數量 
FROM 
  SQL_MASTER M 
  Left join SQL_Village V ON M.ID_V = V.ID 
  Left join SQL_Category C ON M.ID_C = C.ID 
Where 
  C.Category IN ('公寓', '大樓');

--實作練習5
--5-1.更新避難設施地址 是 「苗栗縣 竹南鎮和平街 79 號 」的容人數量為 5000 人 。
UPDATE 
  SQL_MASTER 
set 
  PEOPLECOUNT = 5000 
WHERE 
  FACILITYADDRESS = '苗栗縣竹南鎮和平街79號';
COMMIT;
--5-2.刪除避難設施小 於 1000 容人數量的 資料 。
DELETE FROM 
  SQL_MASTER 
WHERE 
  PEOPLECOUNT < 1000;
COMMIT;












