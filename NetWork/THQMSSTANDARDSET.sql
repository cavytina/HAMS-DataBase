IF OBJECT_ID('THQMSSTANDARDSET','U') IS NOT NULL
DROP TABLE THQMSSTANDARDSET
GO

CREATE TABLE THQMSSTANDARDSET
(
    FID              BIGINT     IDENTITY(1,1),
    CatalogCode      VARCHAR(50),
    CatalogName	     VARCHAR(400),
    StandardCode	 VARCHAR(50),
    StandardValue	 VARCHAR(400),
)

GO