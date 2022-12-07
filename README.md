## Steps

- deploy the app
  ```
  sls deploy
  ```
- export environment variables
  ```
  . ./env.sh
  ```
- configure EC2 instance (install java, clone the repo, copy scripts, etc.)
  ```
  ./ec2/configure-ec2.sh
  ```
- init the server in the EC2 instance
  ```
  ./ec2/init-server.sh
  ```
- start the server in the EC2 instance
  ```
  ./ec2/start-server.sh
  ```
- stop the server in the EC2 instance
  ```
  ./ec2/stop-server.sh
  ```
