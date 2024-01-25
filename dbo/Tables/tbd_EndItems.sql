CREATE TABLE [dbo].[tbd_EndItems] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [InternalEndItem] NVARCHAR (45)  NOT NULL,
    [Type]            NVARCHAR (50)  NULL,
    [MtcCriteria]     NVARCHAR (150) NULL,
    [ModelId]         INT            NOT NULL,
    CONSTRAINT [PK_tbd_EndItems] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_tbd_EndItems_tbd_Models] FOREIGN KEY ([ModelId]) REFERENCES [dbo].[tbd_Models] ([Id]),
    CONSTRAINT [AK_EndItem] UNIQUE NONCLUSTERED ([InternalEndItem] ASC)
);

