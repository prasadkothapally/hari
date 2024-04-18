#**Staging DB connectivity**

###**Steps to access the Staging DB**

1. Please keep the security keys handy that have shared

2. Use the below tunneling command

- ssh -nNT -i namra-extern  devuser@13.235.199.118 -L 5432:10.0.3.234:5432

3. Install the DBeaver

4. Add the new connection and enter the below details

   - host: localhost 
   - port: 5432
   
5. Enter the DB credentials ( Username and Password ) which are shared and test the connection.




