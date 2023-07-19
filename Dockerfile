FROM OPENJDK:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_File} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
RUN java PetadoptionApplicationTest.java
CMD ["java","PetadoptionApplicationTest"]