/*****************************************************
System_UserSetting          程序用户设置
******************************************************/

drop table if exists System_UserSetting;

CREATE TABLE System_UserSetting 
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

INSERT INTO System_UserSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQV9KNKM6NS5N1ZCED33GFT4','admin','系统管理员','21232F297A57A5A743894A0E4A801FC3',1,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_UserSetting WHERE Code='01GQV9KNKM6NS5N1ZCED33GFT4');

INSERT INTO System_UserSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQV9KNKMJPFR6FQYDBKRQSS1','800020','杨迪','18436C0BD4BF414C19EDA4B968930473',2,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_UserSetting WHERE Code='01GQV9KNKMJPFR6FQYDBKRQSS1');

INSERT INTO System_UserSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQV9KNKMF6QWHQWWJY4KPGHA','8A1035','陈秋霞','02597C378E71CAB9A6BE5F99375C0779',3,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_UserSetting WHERE Code='01GQV9KNKMF6QWHQWWJY4KPGHA');

INSERT INTO System_UserSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01H0JDVC8RBK0QNJFQTDQ4Z4CX','8A2506','黄文静','DC30A242034809AB4F2797FFF2D1C2F0',4,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_UserSetting WHERE Code='01H0JDVC8RBK0QNJFQTDQ4Z4CX');

INSERT INTO System_UserSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01H0JDVC8RRDFX357QDNW1C2YD','8A1746','张家华','8DCF76E92CF599F3A4763FA7B7BAEDCF',4,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_UserSetting WHERE Code='01H0JDVC8RRDFX357QDNW1C2YD');
