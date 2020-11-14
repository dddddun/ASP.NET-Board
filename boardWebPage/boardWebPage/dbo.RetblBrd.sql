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

ALTER TABLE [dbo].[RetblBrd] ADD reg_date INT NULL;


select * from RetblBrd

update RetblBrd set depth = 1 where num = 1
SELECT refer, pos, depth FROM RetblBrd WHERE num=3

delete from RetblBrd where num=60;


update RetblBrd set refer = num where refer = 0
