@echo off
echo Building and starting Linux container for Claude Code...

REM Create projects directory if it doesn't exist
if not exist projects mkdir projects

REM Build the Docker image
docker-compose build

REM Run the container
docker-compose up -d

REM Open a shell in the container
echo Starting Linux container and opening a shell...
echo You can run Claude Code by typing: claude
docker exec -it claude-code bash

pause