/*****************************************************
System_ExtensionModuleSetting        程序扩展模块设置
******************************************************/

drop table if exists System_ExtensionModuleSetting;

CREATE TABLE System_ExtensionModuleSetting 
(
    Code CHAR(24)              PRIMARY KEY,          --代码
    Item VARCHAR(100)          NOT NULL,             --英文名称
    Name VARCHAR(100)          NOT NULL,             --中文名称
    Content VARCHAR(500)       DEFAULT '',           --路径信息
    Description VARCHAR(500)   DEFAULT '',           --描述
    Note VARCHAR(500)          DEFAULT '',           --备注
    SuperCode   VARCHAR(24)    DEFAULT '',           --上级代码
    SuperItem   VARCHAR(100)   DEFAULT '',           --上级名称
    Rank TINYINT               NOT NULL,             --排序
    DefaultFlag BOOLEAN        NOT NULL,             --默认值标志
    EnabledFlag BOOLEAN        NOT NULL              --有效标志
);

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GRY4H3XYEM775NTTMHN69XMF','Configuration','设置',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GRY4H3XYEM775NTTMHN69XMF');

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Content,Description,SuperCode,SuperItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GRY4H3XYD8MZKN99XBXAE9PA','BasicConfigurationModule','基本设置','HAMS.Extension.Control.BasicConfiguration.dll',
        'HAMS.Extension.Control.BasicConfiguration.BasicConfigurationModule, HAMS.Extension.Control.BasicConfiguration, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        '01GRY4H3XYEM775NTTMHN69XMF','Configuration',2,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GRY4H3XYD8MZKN99XBXAE9PA');

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Content,Description,SuperCode,SuperItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GRY4H3XY1ZVDMQPE08MQB1TM','ExtensionConfigurationModule','扩展设置','HAMS.Extension.Control.ExtensionConfiguration.dll',
        'HAMS.Extension.Control.ExtensionConfiguration.ExtensionConfigurationModule, HAMS.Extension.Control.ExtensionConfiguration, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        '01GRY4H3XYEM775NTTMHN69XMF','Configuration',3,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GRY4H3XY1ZVDMQPE08MQB1TM');

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Content,Description,SuperCode,SuperItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GZ1HXKCCQ561X5VRXTBZ8QV7','DictionaryConfigurationModule','字典设置','HAMS.Extension.Control.DictionaryConfiguration.dll',
        'HAMS.Extension.Control.ExtensionConfiguration.DictionaryConfigurationModule, HAMS.Extension.Control.DictionaryConfiguration, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        '01GRY4H3XYEM775NTTMHN69XMF','Configuration',4,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GZ1HXKCCQ561X5VRXTBZ8QV7');

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Content,Description,SuperCode,SuperItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GRY4H3XYYNG1ZQ6JW0NB2GSW','UserConfigurationModule','用户设置','HAMS.Extension.Control.UserConfiguration.dll',
        'HAMS.Extension.Control.UserConfiguration.UserConfigurationModule, HQMS.Extension.Control.UserConfiguration, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        '01GRY4H3XYEM775NTTMHN69XMF','Configuration',5,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GRY4H3XYYNG1ZQ6JW0NB2GSW');

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GRY4H3XYA8SDC49T89J9694A','PerformanceAssessment','绩效考核',6,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GRY4H3XYA8SDC49T89J9694A');

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Content,Description,SuperCode,SuperItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GZXY2WXQHZREDNY0J9WKCM6H','ExtensionKernelModule','核心设置','HQMS.Extension.Kernel.dll',
        'HQMS.Extension.Kernel.ExtensionKernelModule, HQMS.Extension.Kernel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        '01GRY4H3XYA8SDC49T89J9694A','PerformanceAssessment',7,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GZXY2WXQHZREDNY0J9WKCM6H');

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Content,Description,Note,SuperCode,SuperItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GRY4R55EWMNKG8VB5GV6FB3V','ConfigurationModule','基本设置','HQMS.Extension.Control.Configuration.dll',
        'HQMS.Extension.Control.Configuration.ConfigurationModule, HQMS.Extension.Control.Configuration, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        'ExtensionKernelModule','01GRY4H3XYA8SDC49T89J9694A','PerformanceAssessment',8,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GRY4R55EWMNKG8VB5GV6FB3V');

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Content,Description,Note,SuperCode,SuperItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GRY4R55EMHG1TJG0JEEXVGSV','MainModule','绩效考核','HQMS.Extension.Control.Main.dll',
        'HQMS.Extension.Control.Main.MainModule, HQMS.Extension.Control.Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        'ExtensionKernelModule','01GRY4H3XYA8SDC49T89J9694A','PerformanceAssessment',9,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GRY4R55EMHG1TJG0JEEXVGSV');

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GZ1HXKCCRMGEW3HNB6MD3RDY','PreventiveHealthCare','预防保健',10,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GZ1HXKCCRMGEW3HNB6MD3RDY');

INSERT INTO System_ExtensionModuleSetting (Code,Item,Name,Content,Description,SuperCode,SuperItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GZ1HXKCCRJVKYX1K2Y31BQSP','InfluenzaSurveillanceModule','流感监测','IDMS.Extension.Control.InfluenzaSurveillance.dll',
        'IDMS.Extension.Control.InfluenzaSurveillance.InfluenzaSurveillanceModule, IDMS.Extension.Control.InfluenzaSurveillance, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null',
        '01GZ1HXKCCRMGEW3HNB6MD3RDY','PreventiveHealthCare',11,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ExtensionModuleSetting WHERE Code='01GZ1HXKCCRJVKYX1K2Y31BQSP');