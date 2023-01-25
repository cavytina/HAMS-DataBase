/*****************************************************
System_FrameModuleSetting        程序模块设置
******************************************************/

drop table if exists System_FrameModuleSetting;

CREATE TABLE System_FrameModuleSetting 
(
    Code CHAR(24)              PRIMARY KEY,          --代码
    Item VARCHAR(100)          NOT NULL,             --英文名称
    Name VARCHAR(100)          NOT NULL,             --中文名称
    Content VARCHAR(500)       DEFAULT '',           --路径信息
    Description VARCHAR(500)   DEFAULT '',           --描述
    Note VARCHAR(500)          DEFAULT '',           --备注
    Rank TINYINT               NOT NULL,             --排序
    DefaultFlag BOOLEAN        NOT NULL,             --默认值标志
    EnabledFlag BOOLEAN        NOT NULL              --有效标志
);

INSERT INTO System_FrameModuleSetting (Code,Item,Name,Content,Description,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQMQVKRZ9700BV5PBWMN2633','ServiceModule','程序服务模块','HAMS.Frame.Service.dll',
        'HAMS.Frame.Service.ServiceModule, HAMS.Frame.Service, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        	1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_FrameModuleSetting WHERE Code='01GQMQVKRZ9700BV5PBWMN2633');

INSERT INTO System_FrameModuleSetting (Code,Item,Name,Content,Description,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQMQVKRZSQHKR5P1V9074PEX','LoginModule','程序登录模块','HAMS.Frame.Control.Login.dll',
        'HAMS.Frame.Control.Login.LoginModule, HAMS.Frame.Control.Login, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        	2,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_FrameModuleSetting WHERE Code='01GQMQVKRZSQHKR5P1V9074PEX');

INSERT INTO System_FrameModuleSetting (Code,Item,Name,Content,Description,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQMQVKRZ188ZZADCF4NTSWX5','MainHeaderModule','程序主界面顶栏模块','HAMS.Frame.Control.MainHeader.dll',
        'HAMS.Frame.Control.MainHeader.MainHeaderModule, HAMS.Frame.Control.MainHeader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        	3,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_FrameModuleSetting WHERE Code='01GQMQVKRZ188ZZADCF4NTSWX5');

INSERT INTO System_FrameModuleSetting (Code,Item,Name,Content,Description,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQMQVKRZM67GVVD36X7TPNCC','MainLeftDrawerModule','程序主界面侧边栏模块','HAMS.Frame.Control.MainLeftDrawer.dll',
        'HAMS.Frame.Control.MainLeftDrawer.MainLeftDrawerModule, HAMS.Frame.Control.MainLeftDrawer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        	4,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_FrameModuleSetting WHERE Code='01GQMQVKRZM67GVVD36X7TPNCC');
