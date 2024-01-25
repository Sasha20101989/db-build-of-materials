CREATE TABLE [dbo].[tbd_MtcCriteria] (
    [ID]                  INT           IDENTITY (1, 1) NOT NULL,
    [MtcGroupID]          INT           NOT NULL,
    [CriteriaName]        NVARCHAR (10) NOT NULL,
    [CriteriaDescription] NCHAR (50)    NULL,
    CONSTRAINT [PK_tbd_MtcCriteria] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_tbd_MtcCriteria_tbd_MtcGroups] FOREIGN KEY ([MtcGroupID]) REFERENCES [dbo].[tbd_MtcGroups] ([ID])
);

