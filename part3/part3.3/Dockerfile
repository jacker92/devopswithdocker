FROM mcr.microsoft.com/powershell:ubuntu-16.04

COPY . .
ENV url=test
ENV username=username
ENV password=password

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install docker.io -y

CMD pwsh -c ./test.ps1 $url $username $password
