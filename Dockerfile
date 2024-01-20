#FROM java:8
FROM eclipse-temurin:8-jdk-jammy

RUN mkdir /osm2matsim
WORKDIR /osm2matsim

COPY . . 
RUN javac -cp vendor/matsim-0.9.0/matsim-0.9.0.jar Osm2matsim.java

ENTRYPOINT ["java", "-cp", "vendor/matsim-0.9.0/matsim-0.9.0.jar:.", "Osm2matsim"]
