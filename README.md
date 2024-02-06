## Build the project
To build a containerized app of the project run the docker build command in the root folder, f.e. docker build -t key-value-store:v1 .
The Dockerfile will build the project with the help of the make file. If you want to build an executable instead of a docker container you can run the make command in the reoot folder. The make command will create a executable called server in the target folder. You might need to change the target system in the build step of the make file, right now the file will build executables for linux systems.

## Test the project
To run all the test in the project, run go test ./... in the root folder