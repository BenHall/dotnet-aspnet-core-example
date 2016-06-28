FROM microsoft/dotnet:1.0.0-preview2-sdk

RUN mkdir /app
WORKDIR /app
COPY project.json /app
RUN ["dotnet", "restore"]
COPY . /app
RUN ["dotnet", "build"]

EXPOSE 5000/tcp
CMD ["dotnet", "run"]
