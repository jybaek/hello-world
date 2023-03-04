# Golang HTTP Server Example
This is a simple example of a Golang HTTP server that responds to incoming requests with "Hello, World!". 
It also includes a Dockerfile for containerization and a Kubernetes YAML file for deployment.

## Prerequisites
To build and run this application, you will need:

- Golang
- Docker
- Kubernetes

## Building the Application
To build the Golang application, run the following command:
```bash
go build
```
This will create an executable file named my-go-app.

## Running the Application
To run the Golang application, execute the following command:

```bash
./my-go-app
```
This will start the server at http://localhost:8080.

## Containerization with Docker
To build a Docker image of the application, use the provided Dockerfile:

```bash
docker build -t <image_name> .
```
This will create a Docker image with the specified name.

## Deployment with Kubernetes
To deploy the application on Kubernetes, use the provided YAML file:

```bash
kubectl apply -f deployment.yaml
```
This will create a deployment, a service, and a namespace in your Kubernetes cluster.

## Cleaning up
To clean up the Kubernetes resources created by this application, use the following command:

```bash
kubectl delete deployment my-go-app -n <namespace_name>
kubectl delete service my-go-app -n <namespace_name>
kubectl delete hpa my-go-app -n <namespace_name>
kubectl delete namespace <namespace_name>
```

## Conclusion
That's it! You should now have a Golang HTTP server running on your local machine and deployed on your Kubernetes cluster. 
Feel free to modify the code and experiment with different configurations.
