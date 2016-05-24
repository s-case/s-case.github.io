### Deployment

<br>

#### Localhost

<br>

This section is for deploying the generated web application to a machine running Ubuntu:

1. Do a `sudo apt-get update`
2. Do a `sudo apt-get install postgresql postgresql-contrib` to install postgres
3. Login as postgres user `sudo -i -u postgres`
4. Start psql `psql`
5. Inside psql, do `\password` to change the password to <whatever-password-you-have declared-in-project-properties>
6. `\q` to exit
7. `exit` to change back the user
8. Do `sudo nano /cetc/postgresql/9.3/main/postgresql.conf` to change the default port (5432) to <whatever-password-you-have declared-in-project-properties> if needed, i.e. 3127
9. Restart postgres: `sudo service postgresql restart`
10. Install java: `sudo apt-get install openjdk-7jdk`
11. Get a jetty version. For example: `wget http://download.eclipse.org/jetty/9.2.13.v20150730/dist/jetty-distribution-9.2.13.v20150730.zip`
12. Install unzip: `sudo apt-get install unzip`
13. Unzip the file
14. cd into the jetty directory and write;
15. `java -jar start.jar`
16. Check out http://109.231.126.192:8080/ to check thatjetty is working
17. Execute some more pqsl commands: `sudo -i -u postgres`
18. `psql`
19. `drop schema public cascade;``
20. `create schema public;`
21. `create sequence hibernate_sequence;`
22. `\q`
23. `exit`
24. Put the generated war file into the webapps directory of jetty
25. Execute a `curl` request to see that it is working. For example:
  1. `$ curl -H "Content-Type: application/json" -X POST -d '{"username":"ace", "password": "123"}' http://109.231.126.61:8080/WebMarks/accounts`
  2. `$ curl -u ace:123 -X GET http://109.231.126.61:8080/WebMarks/account`

If you want to use a different db, you have to create it inside psql:
1. `create database restreviews;`
2. `\connect restreviews`
3. `create sequence hibernate_sequence;`

#### Flexiant Cloud

<br>

In order to deploy the web service into a virtual machine in the Flexiant cloud,
the process is to create a VM using the python driver and then push the code. Please
use the latest version of the python driver available on [GitHub](https://github.com/s-case/YouREST-backend).

The process is as follows:

Create a server using:

    python createServer.py cust_uuid cust_name cust_pwd ssh_key

This will automatically create and start a VM on the testbed; and place's a git
remote in your local git repo. Once it finishes, you can now push the code from
your machine to the VM (manually)  by simply using basic command like:

    git push ubuntu@xxx.xxx.xxx.xxx:/home/ubuntu/YouREST master

So, this should trigger post-receive hook on the git in the master git on the VM.
The trigger will automatically:

  1. Configure Postgres user’s password, port and puts the password in an environment variable called: PASSWD (The password here is generated randomly using `pwgen`)
  2. Postgres is restarted
  3. Builds the code and war file is placed in jetty webapps.
  4. Restarts the jetty.
