CREATE TABLE [dbo].[tbd_Parts] (
    [Id]                 INT            IDENTITY (1, 1) NOT NULL,
    [PartNumber]         NVARCHAR (50)  NOT NULL,
    [PartName]           NVARCHAR (100) NULL,
    [SupplierPartCode]   NVARCHAR (50)  NULL,
    [SupplierPartName]   NVARCHAR (100) NULL,
    [AdditionalPartCode] NVARCHAR (50)  NULL,
    [SupplierCodeID]     INT            NULL,
    [IntColor]           INT            NULL,
    [ExtColor]           INT            NULL,
    [HSCode]             INT            NULL,
    [DateAdd]            DATETIME       CONSTRAINT [DateAdd] DEFAULT (getdate()) NULL,
    [PartTypeID]         INT            NULL,
    CONSTRAINT [PK_tbd_Parts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_tbd_Parts_tbd_ExternalColors] FOREIGN KEY ([ExtColor]) REFERENCES [dbo].[tbd_ExternalColors] ([ID]),
    CONSTRAINT [FK_tbd_Parts_tbd_InternalColors] FOREIGN KEY ([IntColor]) REFERENCES [dbo].[tbd_InternalColors] ([ID]),
    CONSTRAINT [FK_tbd_Parts_tbd_PartsType] FOREIGN KEY ([PartTypeID]) REFERENCES [dbo].[tbd_PartsType] ([ID]),
    CONSTRAINT [FK_tbd_Parts_tbd_Suppliers] FOREIGN KEY ([SupplierCodeID]) REFERENCES [dbo].[tbd_Suppliers] ([Id]),
    CONSTRAINT [AK_PartNr] UNIQUE NONCLUSTERED ([PartNumber] ASC)
);

