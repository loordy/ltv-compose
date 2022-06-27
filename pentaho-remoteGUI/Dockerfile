FROM openjdk:8

# Set Environment Variables

ENV PDI_VERSION=9.3 PDI_BUILD=9.3.0.0-428 \
	PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/data-integration \
	KETTLE_HOME=/data-integration

# Download PDI
# https://sourceforge.net/projects/pentaho/files/Pentaho-9.3/client-tools/pdi-ce-9.3.0.0-428.zip/download
RUN wget --progress=dot:giga https://sourceforge.net/projects/pentaho/files/Pentaho-${PDI_VERSION}/client-tools/pdi-ce-${PDI_BUILD}.zip/download -O pentaho.zip \
    && unzip -q *.zip \
    && rm -f *.zip

WORKDIR data-integration

CMD ["./spoon.sh"]
