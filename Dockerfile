FROM python:3.6

# The EXPOSE instruction indicates the ports on which a container # # will listen for connections
# Since Flask apps listen to port 5000  by default, we expose it
# EXPOSE 8091 8092 8093 8094 8095 8096 11207  11210  11211 18091  18092  18093  18094 18095 18096
EXPOSE 8091
ENV TERM dumb

WORKDIR /app

# Run app.py when the container launches
CMD wget https://packages.couchbase.com/releases/5.5.0/couchbase-server-enterprise-5.5.0-centos7.x86_64.rpm
CMD sudo rpm --install couchbase-server-enterprise-5.5.0-centos7.x86_64.rpm

COPY . /app

# Run app.py when the container launches
CMD python app/app.py
