FROM microsoft/windowsservercore

# Download the MSI from the Project Honolulu and place in same directory is Dockerfile
# Here the link to Honolulu download http://aka.ms/honoluludownload

# Make a directory to where we can copy the msi
CMD [MKDIR c:\temp]

# Copy the MSI to the container
ADD <HonoluluInstallerName>.msi c:\temp\<HonoluluInstallerName>

# Change the <port> to a port you want to use
# Change the <HonoluluInstallerName> to the name that you downloaded from the microsoft site.

RUN msiexec /i <HonoluluInstallerName>.msi /qn /L*v log.txt SME_PORT=<port> SSL_CERTIFICATE_OPTION=generate
