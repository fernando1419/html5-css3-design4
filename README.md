# html5-css3-design4

## Landing page created from scratch using bulma.io CSS framework, html5 and Sass

</br>

### (1) Clone the repo

</br>

### (2) There are two ways for running this project

</br>

- ### One way is without using Docker (easiest way)

  > (a) Go into the cloned directory.  
  > (b) Open the index.html in your preferred browser.

</br>

- ### The other way is using a Docker nginx container

  > (a) Build the Docker Image for the HTML Server. Running the following commands:

  ```bash
   $ cd <project-directory>
   $ docker build -t nginx-html-server-image:v1 .
  ```

  > (b) You can confirm that this has worked by running this command:

  ```bash
  $ docker images

  # It should show you output something like this:
  REPOSITORY TAG IMAGE ID CREATED SIZE
  nginx-html-server-image v1 f35432b326ca 10 minutes ago 33.2MB
  ...
  ```

  > (c) Run the following command to create and run the nginx server container:

  ```bash
   $ docker run --name nginx-webserver -d -p 8080:80 nginx-html-server-image:v1
  ```

  > (d) Test the port 8080 using cURL by running the following command to ensure nginx is running:

  ```bash
  $ curl -I localhost:8080

  # You should show get a response like this:
  HTTP/1.1 200 OK
  Server: nginx/1.17.8
  Date: Wed, 07 Oct 2020 21:16:18 GMT
  Content-Type: text/html
  Content-Length: 14121
  Last-Modified: Wed, 07 Oct 2020 01:35:04 GMT
  Connection: keep-alive
  ETag: "5f7d1b48-3729"
  Accept-Ranges: bytes
  ```

  > (e) If everything went well, you should now see the site up and running by typing localhost:8080 in your browser.
