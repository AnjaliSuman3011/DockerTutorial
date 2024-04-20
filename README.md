# DockerTutorial
Docker Tutorial
### Dockerizing Our Node.js Web Application

Docker enables us to encapsulate our application along with its dependencies into a container, making it portable and easily runnable across different environments. Here's how we can dockerize our Node.js web application:

1. **Write Our Node.js Web App**: We begin by writing the Node.js files for our web application.

2. **Create a Dockerfile**: We craft a Dockerfile that describes how to build our Docker image. We specify a base Node.js image from Docker Hub, copy our Node.js files into the image, and define any necessary configuration or dependencies.

3. **Build the Docker Image**: We use the Dockerfile and the `docker build` command to build our Docker image. This process creates a Docker image containing our Node.js application and its dependencies.

4. **Run the Docker Container**: We run a Docker container based on the image we built using the `docker run` command. This starts the Node.js web server inside the container, making our web application accessible.

5. **Test Our Web App**: We test our web application by accessing it through a web browser or using tools like curl or Postman.

6. **Publish the Docker Image**: Once we're satisfied with our application, we publish the Docker image to Docker Hub using the `docker push` command. This makes our Docker image publicly available for others to download and use.

Anyone with Docker installed can pull our Docker image from Docker Hub and run it on their machine, regardless of the dependencies they have installed. Docker ensures that the container runs consistently, regardless of the host environment.

### Testing with Postman

To test our web application running inside a Docker container using Postman or any other HTTP client, we map the port exposed by the container to a port on our local machine. This allows us to access the web server running inside the container from our host machine.

When we run a Docker container, we use the `-p` or `--publish` flag to specify port mappings. For example, if our Node.js web server inside the Docker container is listening on port 3000, we map this port to a port on our local machine, such as port 8080, using the following Docker command:

```bash
docker run -p 8080:3000 our-nodejs-image
```

This command maps port 3000 inside the container to port 8080 on our local machine. Now, we can access our Node.js web application by navigating to `http://localhost:8080` in our web browser or sending requests to `http://localhost:8080` using Postman.

By mapping container ports to host ports, we can interact with our application running inside the Docker container just as if it were running directly on our local machine. This makes it easy to test and debug our application during development.
