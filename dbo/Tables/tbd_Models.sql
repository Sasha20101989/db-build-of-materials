CREATE TABLE [dbo].[tbd_Models] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [ModelCode] NVARCHAR (10) NOT NULL,
    [Comment]   NVARCHAR (50) NULL,
    CONSTRAINT [PK_tbd_Models] PRIMARY KEY CLUSTERED ([Id] ASC)
);

