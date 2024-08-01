--��@�m��1�� Excel �ɮ�

--��@�m��2
--�إ� SQL_Village
create table SQL_Village(
  ID CHAR(4) primary key, 
  VillageAddress NVARCHAR2(15), 
  VillageTEL VARCHAR2(11), 
  Village NVARCHAR2(5)
);
COMMIT;
--�إ� SQL_Branch
create table SQL_Branch(
  ID CHAR(4) primary key, 
  Branch NVARCHAR2(5), 
  BranchAddress NVARCHAR2(15), 
  BranchTEL CHAR(11)
);
COMMIT;
--�إ� SQL_Category	
create table SQL_Category(
  ID CHAR(4) primary key, 
  Category NVARCHAR2(5)
);
COMMIT;
--�إ� SQL_Master
create table SQL_Master(
  ID_C CHAR(4) references SQL_Category(ID), 
  ID_V CHAR(4) references SQL_Village(ID), 
  FacilityAddress NVARCHAR2(20) primary key, 
  PeopleCount NUMBER(5, 0), 
  UndergroundCount CHAR(2), 
  ID_B CHAR(4) references SQL_Branch(ID)
);
COMMIT;

--��@�m��3
--�s�W��Ʀ� SQL_Village
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C001', '�˫n���q��1035��', 
    '03 758 1072', '�j�H��'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C002', '�˫n��˫n�����s�� 103 ��', 
    '037-472735', '�˫n��'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C003', '�˫n��s�Ψ������ 14 ��', 
    '037-614186', '�s�Ψ�'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C004', '���s��H����������136-1��', 
    '037-724839', '�H����'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C005', '�]�ߥ���]�������� 766 ��', 
    '037-333240', '��]��'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C006', '���ڨ����ڸ�96��', 
    '037-660001', '���ڨ�'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C007', '���������j��82��', 
    '037-661145', '������'
  );
insert INTO SQL_Village(
  ID, VILLAGEADDRESS, VILLAGETEL, VILLAGE
) 
VALUES 
  (
    'C008', '�H�q���H�q��53��1��', 
    '037-616072', '�H�q��'
  );
COMMIT;
--�s�W��Ʀ� SQL_Branch
insert INTO SQL_Branch(
  ID, Branch, BranchAddress, BranchTEL
) 
VALUES 
  (
    'M001', '�˫n����', '�]�߿��˫n����ڵ�72��', 
    '03 747 4796'
  );
insert INTO SQL_Branch(
  ID, Branch, BranchAddress, BranchTEL
) 
VALUES 
  (
    'M002', '�]�ߤ���', '�]�߿��]�ߥ������109��', 
    '03 732 0059'
  );
insert INTO SQL_Branch(
  ID, Branch, BranchAddress, BranchTEL
) 
VALUES 
  (
    'M003', '�Y������', '�]�߿��Y����������503��', 
    '03 766 3004'
  );
COMMIT;
--�s�W��Ʀ� SQL_Category
insert INTO SQL_Category(ID, Category) 
VALUES 
  ('D001', '���J');
insert INTO SQL_Category(ID, Category) 
VALUES 
  ('D002', '�j��');
insert INTO SQL_Category(ID, Category) 
VALUES 
  ('D003', '���@�]�I');
insert INTO SQL_Category(ID, Category) 
VALUES 
  ('D004', '�p����');
COMMIT;
--�s�W��Ʀ� SQL_Master
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D001', 'C001', '�]�߿��˫n���H��20��', 
    100, '1', 'M001'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D002', 'C002', '�]�߿��˫n��M����79��', 
    3142, '1', 'M001'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D002', 'C003', '�]�߿��˫n���s�s���T�q142��', 
    1072, '1', 'M001'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D003', 'C004', '�]�߿����s���ظ�1498��', 
    32, '1', 'M001'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D001', 'C005', '�]�߿��]�ߥ��̥���80��', 
    106, '1', 'M002'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D001', 'C005', '�]�߿��]�ߥ����_��117��', 
    26, '1', 'M002'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D002', 'C005', '�]�߿��]�ߥ��շR��109��', 
    2038, '2', 'M002'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D002', 'C005', '�]�߿��]�ߥ��j�P��53��', 
    128, '2', 'M002'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D003', 'C006', '�]�߿��Y�������ڨ��M����102��', 
    353, '1', 'M003'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D004', 'C007', '�]�߿��Y�������������@��69��', 
    501, '1', 'M003'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D001', 'C008', '�]�߿��Y�����H�q��������65��', 
    194, '1', 'M003'
  );
insert INTO SQL_Master(
  ID_C, ID_V, FacilityAddress, PeopleCount, 
  UndergroundCount, ID_B
) 
VALUES 
  (
    'D004', 'C008', '�]�߿��Y�����H�q��������116��', 
    78, '1', 'M003'
  );
COMMIT;

--��@�m��4
--4-1.�C�X �Һ� �ϰ줺����@ �����]�I�j�� 1000 �e�H�ƶq�� �Һޤ��� �� �����s���q�� �C
SELECT 
  DISTINCT b.branch as �Һޤ���, 
  b.branchtel as �����s���q�� 
FROM 
  SQL_MASTER M 
  Left join SQL_Branch B ON M.ID_B = B.ID 
Where 
  m.peoplecount > 1000;
--4-2. �C�X �Һ� �ϰ줺����@ �����]�I�j�� 1000 �e�H�ƶq�� �Һޤ��� �� �����s���q�� �� �p��X �U �]�I�ƶq �C
SELECT 
  b.branch as �Һޤ���, 
  b.branchtel as �����s���q��, 
  Count(m.facilityaddress) as �]�I�ƶq 
FROM 
  SQL_MASTER M 
  Left join SQL_Branch B ON M.ID_B = B.ID 
Where 
  m.peoplecount > 1000 
Group By 
  b.branch, 
  b.branchtel;
--4-3. �ӤW�D�A �A�ɤW �����]�I�a�} �B �����C
SELECT 
  b.branch as �Һޤ���, 
  b.branchtel as �����s���q��, 
  m.FACILITYADDRESS as �����]�I�a�}, 
  C.Category as ����, 
  Count(m.facilityaddress) as �]�I�ƶq 
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
--4-4. �d�߳]�I�a�}�]�t�u���v�r�������]�I�A�C�X��ƥ����t �����O �B �����]�I�a�} �B �e�H�ƶq �B �Һޤ��� �� �����s���q�ܡC
SELECT 
  v.village as �����O, 
  m.facilityaddress as �����]�I�a�}, 
  m.peoplecount as �e�H�ƶq, 
  b.branch as �Һޤ���, 
  b.branchtel as �����s���q�� 
FROM 
  SQL_MASTER M 
  Left join SQL_Village V ON M.ID_V = V.ID 
  Left join SQL_Branch B ON M.ID_B = B.ID 
Where 
  m.facilityaddress LIKE '%��%';
--4-5. �d�� �Ҧ� ���O �� ���J�Τj�� �� �����]�I �C�X ��ƥ����]�t �����O �B �����줽�Ǧ�m �B �����]�I�a�} �B �e�H�ƶq �C
SELECT 
  v.village as �����O, 
  v.villageaddress as �����줽�Ǧ�m, 
  m.facilityaddress as �����]�I�a�}, 
  m.peoplecount as �e�H�ƶq 
FROM 
  SQL_MASTER M 
  Left join SQL_Village V ON M.ID_V = V.ID 
  Left join SQL_Category C ON M.ID_C = C.ID 
Where 
  C.Category IN ('���J', '�j��');

--��@�m��5
--5-1.��s�����]�I�a�} �O �u�]�߿� �˫n��M���� 79 �� �v���e�H�ƶq�� 5000 �H �C
UPDATE 
  SQL_MASTER 
set 
  PEOPLECOUNT = 5000 
WHERE 
  FACILITYADDRESS = '�]�߿��˫n��M����79��';
COMMIT;
--5-2.�R�������]�I�p �� 1000 �e�H�ƶq�� ��� �C
DELETE FROM 
  SQL_MASTER 
WHERE 
  PEOPLECOUNT < 1000;
COMMIT;












