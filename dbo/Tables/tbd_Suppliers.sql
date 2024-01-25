CREATE TABLE [dbo].[tbd_Suppliers] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [SupplierCode]        NVARCHAR (10) NOT NULL,
    [SupplierName]        NVARCHAR (50) NOT NULL,
    [SupplierCountryCode] NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_tbd_Suppliers] PRIMARY KEY CLUSTERED ([Id] ASC)
);

