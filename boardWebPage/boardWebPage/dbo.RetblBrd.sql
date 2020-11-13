CREATE TABLE [dbo].[RetblBrd] (
    [num]       INT           IDENTITY (1, 1) NOT NULL,
    [name]      NVARCHAR (10) NULL,
    [pass]      NVARCHAR (10) NULL,
    [email]     VARCHAR (20)  NULL,
    [title]     NVARCHAR (50) NULL,
    [contents]  NTEXT         NULL,
    [writedate] VARCHAR (20)  NULL,
    [readcnt]   INT           NULL,
    [refer]     INT           NULL,
    [depth]     INT           NULL,
    [pos]       INT           NULL,
    PRIMARY KEY CLUSTERED ([num] ASC)
);

ALTER TABLE [dbo].[RetblBrd] ADD reg_date INT NULL;

select * from RetblBrd
