if OBJECT_ID('tf_hqms_getppsj','TF') is not null
drop function tf_hqms_getppsj
go

create function tf_hqms_getppsj
(
	@Type            varchar(10),
	@CatalogCode    varchar(50)
)
returns @ret table
(
	CatalogCode      VARCHAR(50),
	CatalogName      VARCHAR(100),
	LocalCode        varchar(50),
	LocalName        varchar(400),
	StandardCode     varchar(50),
	StandardName     varchar(400)
)
as

begin

if @Type='Catalog'
begin
	insert into @ret (CatalogCode,CatalogName)
	select FCODE,FDESCRIBE from dbo.TSTANDARDMAIN (nolock)
	WHERE FHQMSMAP = 1
end
else if @Type='Local'
begin
	insert into @ret (CatalogCode,CatalogName,LocalCode,LocalName)
	select a.FCODE,a.FDESCRIBE,b.FBH,b.FMC from TSTANDARDMAIN a (nolock)
		inner join TSTANDARDMX b (nolock) ON a.FCODE=b.FCODE
	where a.FCODE = @CatalogCode
	and not exists (select 1 from THQMSMAPSET x (nolock) where b.FCODE=x.CatalogCode AND b.FBH=x.HisCode)
end
else if @Type='Standard'
begin
	insert into @ret (CatalogCode,CatalogName,StandardCode,StandardName)
	select a.CatalogCode,a.CatalogName,a.StandardCode,a.StandardValue from THQMSSTANDARDSET a (nolock)
	where a.CatalogCode = @CatalogCode
	and not exists (select 1 from THQMSMAPSET x (nolock) where a.CatalogCode=x.CatalogCode and a.StandardCode=x.StandardCode)
end
else if @Type='Matched'
begin
	insert into @ret (CatalogCode,CatalogName,LocalCode,LocalName,StandardCode,StandardName)
	select CatalogCode,CatalogName,HisCode,HisValue,StandardCode,StandardValue from THQMSMAPSET (nolock)
	where CatalogCode = @CatalogCode
end

return

end
go