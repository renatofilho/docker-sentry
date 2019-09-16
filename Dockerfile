ARG SENTRY_IMAGE
FROM ${SENTRY_IMAGE}-onbuild
RUN apt-get update && apt-get install -y \
  libsasl2-dev \
  libldap2-dev \
  libssl-dev && \
  pip install sentry-ldap-auth
