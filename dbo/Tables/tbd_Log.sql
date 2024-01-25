CREATE TABLE [dbo].[tbd_Log] (
    [id]            INT            IDENTITY (1, 1) NOT NULL,
    [ErrorNumber]   INT            NOT NULL,
    [ErrorType]     NVARCHAR (50)  NOT NULL,
    [ProcedureName] NVARCHAR (200) NOT NULL,
    [Time]          DATETIME       NOT NULL,
    [Message]       NVARCHAR (MAX) NULL,
    [UserName]      NVARCHAR (7)   NOT NULL,
    CONSTRAINT [PK_tbd_Log] PRIMARY KEY CLUSTERED ([id] ASC)
);

