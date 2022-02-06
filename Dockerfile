FROM alpine:latest
RUN apk update 
RUN apk add gcc g++ cmake make gmp-dev mpfr-dev libffi-dev openssl-dev python3 python3-dev py3-pip git
RUN git clone https://github.com/Ganapati/RsaCtfTool.git
WORKDIR /RsaCtfTool
RUN pip install -r "requirements.txt"
ENTRYPOINT ["./RsaCtfTool.py"]
LABEL authors="icon @callrbx"
