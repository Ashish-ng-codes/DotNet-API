USE [yamaha]
GO
/****** Object:  StoredProcedure [dbo].[usp_get_motorcycles_with_specifications]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_get_motorcycles_with_specifications]
as
begin
SELECT 
    m.imgSrc,
    m.name,
    m.price,
    s.power,
    s.performance,
    s.fuelTankCapacity,
    s.engineCapacity,
    s.color,
    s.model,
    s.mileage,
    s.kerbWeight,
    s.seatHeight,
    s.transmission
FROM 
    [dbo].[motorcycles] AS m
JOIN 
    [dbo].[specification] AS s ON m.specification_ref = s.specification_id

	end

GO
