CREATE TABLE [dbo].[tbd_MtcGroups] (
    [ID]            INT           IDENTITY (1, 1) NOT NULL,
    [CriteriaGroup] NVARCHAR (15) NOT NULL,
    CONSTRAINT [PK_tbd_MtcGroups] PRIMARY KEY CLUSTERED ([ID] ASC)
);

