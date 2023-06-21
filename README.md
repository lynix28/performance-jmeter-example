# performance-jmeter-example

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/lynix28/performance-jmeter-example/tree/master.svg?style=shield)](https://dl.circleci.com/status-badge/redirect/gh/lynix28/performance-jmeter-example/tree/master)

Performance test example project using Apache JMeter

Additional plugins need to install via "JMeter Plugins Manager":
- Custom Thread Group
- GRPC Request

How to run:
- Add execute permission to `run.sh` script
- Run `./run.sh <location/to/testplan>`

Run test with Docker
- Build Docker image with provided `Dockerfile`
  - `docker build -t <your_image:tag> .`
- Run the container with `docker run --name "your_container" -itd <your_image:tag>`
- Copy your JMeter testplan with `docker cp <your_file> <your_container>:/app/`
- Access the container with `docker exec -it <your_container> bash`
- Run the test inside the Docker Container
