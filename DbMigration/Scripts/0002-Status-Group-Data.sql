
  IF NOT EXISTS (SELECT 1 FROM [StatusGroup] WHERE Code='Current')
  BEGIN
	INSERT INTO [StatusGroup] (Name,Code,IsActive,DisplayOrder) VALUES('Current','Current',1,1)
  END

  IF NOT EXISTS (SELECT 1 FROM [StatusGroup] WHERE Code='Backlog')
  BEGIN
	INSERT INTO [StatusGroup] (Name,Code,IsActive,DisplayOrder) VALUES('Backlog','Backlog',1,2)
  END
 IF NOT EXISTS (SELECT 1 FROM [StatusGroup] WHERE Code='Completed')
  BEGIN
	INSERT INTO [StatusGroup] (Name,Code,IsActive,DisplayOrder) VALUES('Completed','Completed',1,3)
  END