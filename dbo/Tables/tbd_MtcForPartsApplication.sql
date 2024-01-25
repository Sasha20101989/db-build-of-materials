CREATE TABLE [dbo].[tbd_MtcForPartsApplication] (
    [ID]                INT IDENTITY (1, 1) NOT NULL,
    [PartApplicationID] INT NOT NULL,
    [MtcCriteriaID]     INT NOT NULL,
    CONSTRAINT [PK_tbd_MtcForPartsApplication] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_tbd_MtcForPartsApplication_tbd_MtcCriteria] FOREIGN KEY ([MtcCriteriaID]) REFERENCES [dbo].[tbd_MtcCriteria] ([ID]),
    CONSTRAINT [FK_tbd_MtcForPartsApplication_tbd_PartsApplication] FOREIGN KEY ([PartApplicationID]) REFERENCES [dbo].[tbd_PartsApplication] ([ID])
);

