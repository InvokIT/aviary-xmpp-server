FROM rroemhild/ejabberd:17.03-1

USER root
COPY authenticate-user.py /opt/ejabberd/scripts/
RUN chmod a+x /opt/ejabberd/scripts/authenticate-user.py

COPY ./ejabberd/conf/ /opt/ejabberd/conf/

USER ejabberd
