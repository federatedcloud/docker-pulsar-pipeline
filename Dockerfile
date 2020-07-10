FROM cornellcac/presto:latest

SHELL ["/bin/bash", "-c"]

USER root

WORKDIR /opt/pulsar

# Install dependencies
#RUN pip install https://github.com/UCBerkeleySETI/blimpy/archive/2.0.0.tar.gz
COPY requirements.txt /var/tmp/requirements2.txt
RUN pip install -r /var/tmp/requirements2.txt

# Install psrdynspec
RUN git clone https://github.com/akshaysuresh1/psrdynspec.git && \
    cd psrdynspec && python setup.py install

# Install psrpipe
RUN git clone https://github.com/akshaysuresh1/psrpipe.git


