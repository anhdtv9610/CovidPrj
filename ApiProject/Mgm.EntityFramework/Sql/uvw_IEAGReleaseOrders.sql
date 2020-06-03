Create View [dbo].[uvw_IEAGReleaseOrders] AS 
Select 
	o.keyA as OrderKeyA, 
	o.Sonumber as 'SONo', 
	replace (o.txt5, '1', 'X') [BullRush], 
	o.SoDate as 'SODate',
	o.[ShipBy] as 'ShipBy', 
	o.[ShipTo] as 'ShipTo', 
	o.Qty,
	o.[Type], 
	o.[Phase], 
	o.[Windings],
	o.Class,
	o.KVA,
	o.[Overload KVA] as 'OverloadKVA',
	o.HV,
	o.hvconnection [HVConn], 
	o.[HVKVBil] as [HVKVBil], 
	o.kFactor [KFactor], 
	o.LV, 
	o.lvconnection [LVConn],
	o.[LVKVBil] [LVKVBil], 
	o.crise as [CRise], 
	o.HZ,
	o.Impedence, 
	o.Fluid, 
	o.indoor as Enclosure,
	o.memo as Notes,
	o.[InternalNotes],
	'1/1/1900' [DateFrom],
	GetDate() as [DateTo],
	o.reference as [MfgLoc], 
	o.[Status],
	oo.Adder as [AddnlFeatures],
	o.[ChangeOrder] [CONo],
	o.[CODate] [CODate],
	co.changeto [ChangeTo],
	co.changefrom [ChangeFrom]
from [MGMSales].[dbo].[orders] o left join [MGMSales].[dbo].[ChangeOrders] co on o.[key] = co.[key] and co.[CONumber] = o.changeorder 
left join (
	SELECT keyA, STUFF((
		SELECT ', ' + rtrim(convert(varchar(250),Adder))
		FROM [MGMSales].[dbo].[OrderOptions] b 
		WHERE a.keyA = b.keyA 
		FOR XML PATH('')),1,1,'') Adder 
	FROM [MGMSales].[dbo].[OrderOptions] a 
	GROUP BY keyA
) oo on oo.keyA = o.keyA
where o.reference = 'Plant 2' and o.[status] = 'release'
--order by  o.Sonumber desc