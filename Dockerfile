FROM ubuntu:latest
ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt-get install -y libgmp3-dev libmpc-dev git python3 python3-pip sagemath
RUN git clone https://github.com/Ganapati/RsaCtfTool.git
WORKDIR /RsaCtfTool
RUN pip install -r "requirements.txt"
RUN pip install -r "optional-requirements.txt"
ENTRYPOINT ["./RsaCtfTool.py"]
LABEL authors="icon @callrbx"
