USE [yamaha]
GO
/****** Object:  StoredProcedure [dbo].[usp_get_scooters_with_specifications]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[usp_get_scooters_with_specifications]
as
begin
SELECT 
    s.imgSrc,
    s.name,
    s.price,
    ss.power,
    ss.performance,
    ss.fuelTankCapacity,
    ss.engineCapacity,
    ss.color,
    ss.model,
    ss.mileage,
    ss.kerbWeight,
    ss.seatHeight,
    ss.transmission
FROM 
    [dbo].scooters AS s
JOIN 
    [dbo].scooter_spec AS ss ON s.scooter_spec_ref = ss.scooter_spec_id;

	end

GO
