IF OBJECT_ID('usp_hqms_getppsj','P') IS NOT NULL
DROP PROC usp_hqms_getppsj
GO

CREATE PROC usp_hqms_getppsj
@Type             VARCHAR(10),
@CatalogCode      VARCHAR(50),
@CatalogName	  VARCHAR(400),
@LocalCode        varchar(50),
@LocalName        varchar(400),
@StandardCode     varchar(50),
@StandardName     varchar(400)
AS

SET NOCOUNT ON

if @Type='Match'
begin
	insert into dbo.THQMSMAPSET (CatalogCode,CatalogName,StandardCode,StandardValue,HisCode,HisValue)
	values (@CatalogCode,@CatalogName,@StandardCode,@StandardName,@LocalCode,@LocalName)

	if @@ERROR=0
		select 'T'
	else
		select 'F','∆•≈‰ ß∞‹!'
end
else if @Type='UnMatch'
begin
	delete from dbo.THQMSMAPSET where CatalogCode=@CatalogCode and StandardCode=@StandardCode and HisCode=@LocalCode

	if @@ERROR=0
		select 'T'
	else
		select 'F','»°œ˚∆•≈‰ ß∞‹!'
end

return