IF OBJECT_ID('THQMSMAPSET','U') IS NOT NULL
DROP TABLE THQMSMAPSET
GO

CREATE TABLE THQMSMAPSET
(
    FID              BIGINT     IDENTITY(1,1),
    CatalogCode      VARCHAR(50),
    CatalogName	     VARCHAR(400),
    StandardCode	 VARCHAR(50),
    StandardValue	 VARCHAR(400),
    HisCode	         VARCHAR(50),
    HisValue         VARCHAR(800)
)

GO