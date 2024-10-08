FROM maven:3.6.3-openjdk-17
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN mvn clean package -DskipTests
CMD ["java", "-jar", "target/ecommerce-0.0.1-SNAPSHOT.jar"]