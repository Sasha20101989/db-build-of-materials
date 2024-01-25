CREATE TABLE [dbo].[tbd_ExternalColors] (
    [ID]      INT           IDENTITY (1, 1) NOT NULL,
    [Code]    NVARCHAR (3)  NOT NULL,
    [NameRus] NVARCHAR (15) NOT NULL,
    [NameEng] NVARCHAR (15) NOT NULL,
    CONSTRAINT [PK_tbd_ExternalColors] PRIMARY KEY CLUSTERED ([ID] ASC)
);

