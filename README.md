# CloudOpsKit Project

The CloudOpsKit project aims to simulate the complete journey of an application from its initial development and hosting on the developer's machine to its successful deployment and management with a large team and various supporting tools. The project focuses on DevOps, DevSecOps, and SRE practices, incorporating the following components:

- AWS: Used as the infrastructure source.
- Terraform: Employed for infrastructure provisioning.
- Docker: Utilized for image creation and containerization.
- Kustomize: Employed for application provisioning in Kubernetes.
- Elasticsearch and Kibana: Utilized for logging purposes.
- Prometheus and Grafana: Employed for monitoring the application.
- Jenkins: Utilized for creating automated pipelines.
- GitLab: Employed for code versioning.

## Project Structure

The project is organized into several folders, each serving a specific purpose:

- `docker`: Contains application code, Dockerfiles for building images, and a docker-compose file for local testing on the developer's machine.

## Journey

The journey section describes the different stages of the project's evolution. Each stage represents a significant milestone or task completed. Currently, the project has completed the first stage, and the second stage is in progress. Additional stages will be added as the project progresses. The existing stages are as follows:

1. **Creating NginxHelloWorld application**: In this initial stage, we developed a basic Docker application called 'NginxHelloWorld.' The application is designed to run smoothly on any developer's workstation. At this point, no infrastructure has been provisioned yet.

2. **Preparing AWS Environment**: As the development team continues working on the application, the operations team is responsible for preparing the underlying cloud infrastructure. This infrastructure will serve as the foundation for all the tools and services used throughout the project.

3. **Deploying GitLab**: As the project progresses, it becomes necessary to establish a central code versioning point. Deploying GitLab enables collaborative development and marks the beginning of the DevOps lifecycle.

## Future Steps

The README.md file will be regularly updated with new stages and tasks as the project advances. The forthcoming stages may include:

4. **Implementing Infrastructure as Code with Terraform**: Provisioning the cloud infrastructure using Terraform to automate and manage the infrastructure configuration.

5. **Containerizing Application with Docker**: Containerizing the application using Docker for consistent deployment across different environments.

6. **Deploying Application in Kubernetes with Kustomize**: Utilizing Kustomize to provision and manage the application in a Kubernetes cluster.

7. **Implementing Logging with Elasticsearch and Kibana**: Setting up Elasticsearch and Kibana for centralized logging and log analysis.

8. **Monitoring Application with Prometheus and Grafana**: Configuring Prometheus and Grafana to monitor the application's performance and health metrics.

9. **Building Automated Pipelines with Jenkins**: Setting up Jenkins to create automated pipelines for continuous integration and continuous deployment (CI/CD).

10. **Expanding Collaboration with GitLab**: Utilizing additional features of GitLab for code reviews, issue tracking, and collaborative project management.

Please note that this is just an example, and the actual stages and tasks may vary based on your project's requirements and objectives.

## About Me

My name is Eduardo, and I am a DevOps, DevSecOps, and SRE professional passionate about building and managing scalable and reliable systems. With expertise in cloud infrastructure, automation, and continuous delivery, I strive to optimize development processes and enhance operational efficiency.

Connect with me on social media platforms:

- [LinkedIn](www.linkedin.com/in/eduardo-arruda-pimentel)
- [Twitter](https://twitter.com/eduardoarruda_)
- [GitHub](https://github.com/eduardoap)

## License

The CloudOpsKit project is licensed under the [MIT License](link-to-license-file). Please see the [LICENSE.md](link-to-license.md) file for more details.

Feel free to reach out to me if you have any questions or suggestions regarding this project. Happy coding!