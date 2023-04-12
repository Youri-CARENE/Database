# Use the official postgres image as the base image
FROM postgres:latest

# Set environment variables for PostgreSQL
ENV POSTGRES_USER myuser
ENV POSTGRES_PASSWORD mypassword
ENV POSTGRES_DB mydatabase

# Copy the requirements.txt file into the container
COPY requirements.txt /requirements.txt

# Install any dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install -r /requirements.txt && \
    apt-get clean

# Set up a volume to persist the data
VOLUME ["/var/lib/postgresql/data"]

# Expose the PostgreSQL port
EXPOSE 5432

# Copy the startup script into the container
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

# Start PostgreSQL and run any additional scripts
CMD ["/startup.sh"]
