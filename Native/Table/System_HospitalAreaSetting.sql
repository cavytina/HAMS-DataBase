/*****************************************************
System_HospitalAreaSetting          医院院区设置
******************************************************/

drop table if exists System_HospitalAreaSetting;

CREATE TABLE System_HospitalAreaSetting 
(
    Code CHAR(24)              PRIMARY KEY,          --代码
    Item VARCHAR(100)          NOT NULL,             --账户
    Name VARCHAR(100)          NOT NULL,             --姓名
    Content VARCHAR(500)       DEFAULT '',           --密码
    Description VARCHAR(500)   DEFAULT '',           --描述
    Note VARCHAR(500)          DEFAULT '',           --备注
    Rank TINYINT               NOT NULL,             --排序
    DefaultFlag BOOLEAN        NOT NULL,             --默认值标志
    EnabledFlag BOOLEAN        NOT NULL              --有效标志
);

INSERT INTO System_HospitalAreaSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01H0AJD89NZBV86SM5M1AE61HB','01','重庆医科大学附属大学城医院',1,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_HospitalAreaSetting WHERE Code='01H0AJD89NZBV86SM5M1AE61HB');

INSERT INTO System_HospitalAreaSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01H0AJD89NZSBMBYJBDZBHC674','02','重庆医科大学附属康复医院大公馆院区',2,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_HospitalAreaSetting WHERE Code='01H0AJD89NZSBMBYJBDZBHC674');

INSERT INTO System_HospitalAreaSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01H0AJD89NRNBHX003V1NV8YZH','03','重庆医科大学附属康复医院黄水院区',3,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_HospitalAreaSetting WHERE Code='01H0AJD89NRNBHX003V1NV8YZH');
