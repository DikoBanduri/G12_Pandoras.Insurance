create table RolesPermissions
(
	RoleID int,
	PermissionID int,
	[IsDeleted] BIT NOT NULL DEFAULT 0, 
    primary key (RoleID, PermissionID),
	foreign key (RoleID) references Roles (ID), 
	foreign key (PermissionID) references Permissions (ID)
)