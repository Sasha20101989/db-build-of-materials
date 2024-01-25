CREATE TABLE [dbo].[tbd_PartsApplication] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [ModelID]     INT            NULL,
    [PartID]      INT            NOT NULL,
    [Quantity]    DECIMAL (6, 3) CONSTRAINT [DF_tbd_PartsApplication_Quantity] DEFAULT ((1)) NULL,
    [MtcCriteria] NVARCHAR (100) NULL,
    [Adopt]       DATETIME       NULL,
    [Abolish]     DATETIME       NULL,
    [LineNr]      INT            NULL,
    [PrevLineID]  INT            NULL,
    [DateAdd]     DATETIME       NULL,
    [ReleaseDate] DATETIME       NULL,
    [Comment]     NVARCHAR (150) NULL,
    CONSTRAINT [PK_tbd_PartsApplication] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_tbd_PartsApplication_tbd_Models] FOREIGN KEY ([ModelID]) REFERENCES [dbo].[tbd_Models] ([Id]),
    CONSTRAINT [FK_tbd_PartsApplication_tbd_Parts] FOREIGN KEY ([PartID]) REFERENCES [dbo].[tbd_Parts] ([Id])
);

