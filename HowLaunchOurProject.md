### this project is composed of :
1 - client service ( Angular project )
2 - 4 microservices ( all of them are implemented and coded but only 2 used during the POC )
each service is placed in a different repository, to facilitate the cloning of the micro services we created a repos.txt that contains the repositories directories, a 'clone_repos.sh' 

Make sure your SSH key is set up and added to your GitHub account so that you have access to clone repositories via SSH.

### How to Launch ?
inside each cloned back-end service launch docker-compose up -d ( poc only includes PatientApi, ialDataProcessingService).
for development purposes ( make projects to be reloaded instantly after changes ), we to launch the projects from local outside the container :
* inside PatientApi project launch : 
./mvnw spring-boot:run
* inside ialDataProcessingService service launch:
mvn spring-boot:run -Dspring-boot.run.arguments="--server.port=8085"
* inside IHM_AL ( our client service ):
ng serve
now you can test our poc using, http://localhost:4200
on : http://localhost:4200/user-board - you can find the user interface.