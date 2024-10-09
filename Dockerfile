# Etapa 1: Construir o projeto usando Maven
FROM ubuntu:latest AS build

# Atualize os pacotes e instale o JDK e Maven
RUN apt-get update && apt-get install -y openjdk-17-jdk maven

# Defina o diretório de trabalho
WORKDIR /app

# Copie o arquivo pom.xml e baixe as dependências (para cache de build eficiente)
COPY pom.xml ./
RUN mvn dependency:go-offline -B

# Copie o restante do código-fonte
COPY src ./src

# Construa o projeto (sem testes)
RUN mvn clean install -DskipTests

# Etapa 2: Criar uma imagem mais leve para rodar o projeto
FROM openjdk:17-jdk-slim

# Expor a porta 8080
EXPOSE 8080

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o JAR construído da etapa de build
COPY --from=build /app/target/analyzer-0.0.1-SNAPSHOT.jar app.jar

# Executar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
