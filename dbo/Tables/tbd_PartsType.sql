CREATE TABLE [dbo].[tbd_PartsType] (
    [ID]       INT           IDENTITY (1, 1) NOT NULL,
    [PartType] NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_tbd_PartsType] PRIMARY KEY CLUSTERED ([ID] ASC)
);

