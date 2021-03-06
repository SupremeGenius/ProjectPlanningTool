/****** Script for SelectTopNRows command from SSMS  ******/

  DECLARE @CURRENT_STATUS_GROUP_ID AS INT
  SET @CURRENT_STATUS_GROUP_ID = (SELECT Id FROM StatusGroup WHERE Code='Current')

    DECLARE @BACKLOG_STATUS_GROUP_ID AS INT
  SET @BACKLOG_STATUS_GROUP_ID = (SELECT Id FROM StatusGroup WHERE Code='Backlog')

    DECLARE @COMPLETED_STATUS_GROUP_ID AS INT
  SET @COMPLETED_STATUS_GROUP_ID = (SELECT Id FROM StatusGroup WHERE Code='Completed')


  IF NOT EXISTS (SELECT 1 FROM [Status] WHERE Code='New')
  BEGIN
	INSERT INTO [Status] (Name,Code,[StatusGroupId],[Color]) VALUES('New','New',@CURRENT_STATUS_GROUP_ID,'#F1FB9A')
  END
   IF NOT EXISTS (SELECT 1 FROM [Status] WHERE Code='InProgress')
  BEGIN
	INSERT INTO [Status] (Name,Code,[StatusGroupId],[Color]) VALUES('In Progress','InProgress',@CURRENT_STATUS_GROUP_ID,'#74B9EE')
  END
   IF NOT EXISTS (SELECT 1 FROM [Status] WHERE Code='Closed')
  BEGIN
	INSERT INTO [Status] (Name,Code,[StatusGroupId],[Color]) VALUES('Closed','Closed',@COMPLETED_STATUS_GROUP_ID,'Black')
  END
   IF NOT EXISTS (SELECT 1 FROM [Status] WHERE Code='Completed')
  BEGIN
	INSERT INTO [Status] (Name,Code,[StatusGroupId],[Color]) VALUES('Completed','Completed',@COMPLETED_STATUS_GROUP_ID,'#33a030')
  END
   IF NOT EXISTS (SELECT 1 FROM [Status] WHERE Code='ToDo')
  BEGIN
	INSERT INTO [Status] (Name,Code,[StatusGroupId],[Color]) VALUES('To do','ToDo',@BACKLOG_STATUS_GROUP_ID,'#d4c5f9')
  END
   IF NOT EXISTS (SELECT 1 FROM [Status] WHERE Code='Current')
  BEGIN
	INSERT INTO [Status] (Name,Code,[StatusGroupId],[Color]) VALUES('New','New',@CURRENT_STATUS_GROUP_ID,'#F1FB9A')
  END
