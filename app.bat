@echo off
cls
set IMAGENAME=demo-app
echo Building and starting %IMAGENAME%...
docker build -t %IMAGENAME% .
docker stop %IMAGENAME%
docker run -p 8080:8080 --rm --name %IMAGENAME% %IMAGENAME%
docker stop %IMAGENAME%