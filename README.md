# RsaCtfTool Docker Image
Simple a Docker build for the latest RSACTFTool

This is an updated image for more recent releases that use python3.

Includes sagemath.

I did no work on the underlying tool, that is all Ganapati's great work!

Run with:
```
docker run callrbx/rsactftool <tool options>
```


Pull from DockerHub:
```
docker pull callrbx/rsactftool
```

Build locally:
```
docker build -t callrbx/rsactftool:local .
```

[RsaCtfTool](https://github.com/Ganapati/RsaCtfTool)