


FROM ubuntu:latest

# Install OpenSSH server
RUN apt-get update && apt-get install -y openssh-server

# Create SSHD directory
RUN mkdir /var/run/sshd

# Copy the setup script to the container
COPY ssh.sh /ssh.sh

# Set execute permissions for the script
RUN chmod +x /ssh.sh

# Expose SSH port
EXPOSE 22

# Run the setup script and start SSH server
CMD /ssh.sh && /usr/sbin/sshd -D








