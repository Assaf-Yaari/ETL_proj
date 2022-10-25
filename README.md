Hi I hope you enjoy my work! I included the both a docker file 
for a mysql server and a docker file for a jupyter notebook. Unforetnely I could only update the mysql databasae from my pc but the jupyter notebook runs and converts and saves the data to a csv regardless of pushing it to the databases. for this purpose I would aslo include the original maybe this will be of some use. 

Commands to run build and docker files (Just in case):
notebook: 
    build : docker build -t dashmotejupyt:latest .
    run:  docker run --rm -it -p 8888:8888 dashmotejupyt:latest
Mysql : 
    run: docker run --detach --name=dashmotemysql --publish 6603:3306 dashmotemysql:latest
    build : docker build -t dashmotemysql:latest

