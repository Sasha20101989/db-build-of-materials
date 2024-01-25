CREATE TABLE [dbo].[tbd_MtcForEndItems] (
    [ID]            INT IDENTITY (1, 1) NOT NULL,
    [EndItemID]     INT NOT NULL,
    [MtcCriteriaID] INT NOT NULL,
    CONSTRAINT [PK_tbd_MtcForEndItems] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_tbd_MtcForEndItems_tbd_EndItems] FOREIGN KEY ([EndItemID]) REFERENCES [dbo].[tbd_EndItems] ([Id]),
    CONSTRAINT [FK_tbd_MtcForEndItems_tbd_MtcCriteria] FOREIGN KEY ([MtcCriteriaID]) REFERENCES [dbo].[tbd_MtcCriteria] ([ID])
);

