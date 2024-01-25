CREATE TABLE [dbo].[tbd_ModelVariants] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [EndItemID]       INT           NOT NULL,
    [IntColID]        INT           NOT NULL,
    [ExtColID]        INT           NOT NULL,
    [DrawingNumber]   NVARCHAR (14) NOT NULL,
    [ModelVariant]    NVARCHAR (14) NOT NULL,
    [SupplierEndItem] NCHAR (50)    NULL,
    [ModVarAdopt]     DATETIME      NULL,
    [ModVarAbolish]   DATETIME      NULL,
    CONSTRAINT [PK_tbd_ModelVariants] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_tbd_ModelVariants_tbd_EndItems] FOREIGN KEY ([EndItemID]) REFERENCES [dbo].[tbd_EndItems] ([Id]),
    CONSTRAINT [FK_tbd_ModelVariants_tbd_ExternalColors] FOREIGN KEY ([ExtColID]) REFERENCES [dbo].[tbd_ExternalColors] ([ID]),
    CONSTRAINT [FK_tbd_ModelVariants_tbd_InternalColors] FOREIGN KEY ([IntColID]) REFERENCES [dbo].[tbd_InternalColors] ([ID]),
    CONSTRAINT [AK_DwgNr] UNIQUE NONCLUSTERED ([DrawingNumber] ASC),
    CONSTRAINT [AK_ModVar] UNIQUE NONCLUSTERED ([ModelVariant] ASC)
);

