FROM python:3.10
COPY . /app
WORKDIR /app

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN pip intsall -r requirements.txt
RUN python3 setup.py install
CMD python3 -m myapp.cli