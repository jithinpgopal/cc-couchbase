FROM python:3.6

# The EXPOSE instruction indicates the ports on which a container # # will listen for connections
# Since Flask apps listen to port 5000  by default, we expose it
# EXPOSE 8091 8092 8093 8094 8095 8096 11207  11210  11211 18091  18092  18093  18094 18095 18096
EXPOSE 8091
ENV TERM dumb

WORKDIR /app

# Run app.py when the container launches
RUN yum install erlang-erts
RUN yum install file

COPY . /app

# Run app.py when the container launches
CMD python app/app.py
