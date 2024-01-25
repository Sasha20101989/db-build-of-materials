CREATE TABLE [dbo].[tbd_BomProduction] (
    [ID]                 INT      IDENTITY (1, 1) NOT NULL,
    [ModelVariantID]     INT      NOT NULL,
    [PartsApplicationID] INT      NOT NULL,
    [DateAdd]            DATETIME NULL,
    CONSTRAINT [PK_tbd_BomProduction] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_tbd_BomProduction_tbd_ModelVariants] FOREIGN KEY ([ModelVariantID]) REFERENCES [dbo].[tbd_ModelVariants] ([Id]),
    CONSTRAINT [FK_tbd_BomProduction_tbd_PartsApplication] FOREIGN KEY ([PartsApplicationID]) REFERENCES [dbo].[tbd_PartsApplication] ([ID]),
    CONSTRAINT [AK_BomProd] UNIQUE NONCLUSTERED ([ModelVariantID] ASC, [PartsApplicationID] ASC)
);

