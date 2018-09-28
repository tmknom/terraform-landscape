FROM alpine:3.8

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
ARG REPO_NAME
LABEL org.label-schema.vendor="tmknom" \
      org.label-schema.name=$REPO_NAME \
      org.label-schema.description="Improve Terraform's plan output to be easier to read and understand." \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.version=$VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/$REPO_NAME" \
      org.label-schema.usage="https://github.com/$REPO_NAME/blob/master/README.md#usage" \
      org.label-schema.docker.cmd="terraform plan | docker run --rm -i $REPO_NAME" \
      org.label-schema.schema-version="1.0"

ARG RUBY_VERSION=2.5.1-r2
ARG MODULE_VERSION=0.2.1

RUN apk add --no-cache ruby=${RUBY_VERSION} ruby-json=${RUBY_VERSION} && \
    gem install --no-document terraform_landscape -v ${MODULE_VERSION} && \
    rm -rf ~/.gem

WORKDIR /work
ENTRYPOINT ["/usr/bin/landscape"]
