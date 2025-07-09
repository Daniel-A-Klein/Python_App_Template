FROM python:3.13.0-alpine as build

RUN apk update && \
    apk add git

COPY . /usr/src/Python_App_Template

RUN pip install build && \
    cd /usr/src/Python_App_Template && \
    python -m build . && \
    cd ./scripts && \
    ./docker_install.sh

ENTRYPOINT ["app_name"]