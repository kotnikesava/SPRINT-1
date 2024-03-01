Configure and Install all required plugins and Github, AWS Integration:
using webhooks and build some sample application.

Configure Security and User Groups
Once Jenkins is set up, you need to configure security settings and user groups:
Navigate to Manage Jenkins:
Go to the Jenkins dashboard.
Click on Manage Jenkins > Manage Plugins.
Ensure the Role-based Authorization Strategy plugin is installed. If not, find it in the Available tab, install it, and restart Jenkins.

Configure Security:
Go back to Manage Jenkins > Configure Global Security.
Check Enable security.
Under Authorization, select Role-Based Strategy.
Save the changes.

Manage and Assign Roles:
Now, go to Manage Jenkins > Manage and Assign Roles > Manage Roles.
Here, you'll create roles for your admin and read-only groups.

Create User Groups (Roles):
Admin Group:
Add a new role called admin.
Give this role full permissions by checking all checkboxes.

Read-Only Group:
Add a new role called read-only.
Check permissions under View and Job categories that align with read-only access, like View/Read and Job/Discover.

Assign Users to Groups:
Go to Manage and Assign Roles > Assign Roles.
Under Global roles, assign your admin user to the admin role.
Create users for your read-only group by going to Manage Jenkins > Manage Users > Create User.
After creating read-only users, assign them to the read-only role under Assign Roles.

Verifying the Configuration:
To verify your configuration, log in with a user from the read-only group and check their access level. They should be able to view jobs and builds but not execute or modify them.
Similarly, logging in as an admin user should grant full access to Jenkins functionalities.

