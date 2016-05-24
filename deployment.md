### Deployment

#### Localhost

#### Flexiant Cloud

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
