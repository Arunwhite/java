# java
Build and Run the Docker Image

Build the Docker Image
docker build -t java .

Run the Docker Container
docker run -itd -p 8080:8080 --name java java

Access the Application
Open your web browser and navigate to http://localhost:8080/ to see the "Hello, Java!" message.

