CREATE TABLE [dbo].[tbd_InternalColors] (
    [ID]      INT           IDENTITY (1, 1) NOT NULL,
    [Code]    NVARCHAR (6)  NOT NULL,
    [NameRus] NVARCHAR (15) NOT NULL,
    [NameEng] NVARCHAR (15) NOT NULL,
    CONSTRAINT [PK_tbd_InternalColors] PRIMARY KEY CLUSTERED ([ID] ASC)
);

