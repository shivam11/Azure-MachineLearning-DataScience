USE [nyctaxi]
GO
/****** Object:  StoredProcedure [dbo].[PersistModel_New]    Script Date: 7/25/2017 12:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description: Store model in database. Input is a binary representation of R Model object passed as Hex string
-- =============================================
ALTER PROCEDURE [dbo].[PersistModel]
@m nvarchar(max), @modeler varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	insert into nyc_taxi_models (model, modeler) values (convert(varbinary(max),@m,2), @modeler)
END