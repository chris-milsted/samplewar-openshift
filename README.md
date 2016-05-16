# samplewar-openshift
Injects samplewar file into openshift 3 joboss webserver (tomcat) image

Using the Docker build strategy (binary deployment) to deploy the simple sample.war file into the JBoss Web Server container image.

So assuming you have an OpenShift cluster that can see this Github repo and also has access to registry.access.redhat.com; the steps to use this are:

1. Login to the command line (oc login)
2. Set your project (oc project)
3. Then create the application (oc new-app https://github.com/chris-milsted/samplewar-openshift.git --name=sample)
4. Lastly create a route so expose this externally (I used the UI for this) with the PATH set to /sample

This should be all you need and you can then navigate to the following URL to access the sample aplication war:

http://routename-namespace.OSEAddress/sample/

Note to see how this works you can look at the Dockerfile in the top level of the repo.
When OpenShift sees the docker file it uses the Docker strategy for the build.
The Dockerfile pulls the JWS 8.0 container, then injects the sample.war file into the /opt/webserver/webapps directory so it will be automatically deployed when the container starts.

Enjoy.
