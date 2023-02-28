FROM infracost/infracost:ci-latest
COPY cost_estimation.sh /usr/local/bin
WORKDIR  /github/workspace
RUN  chmod +x /usr/local/bin/cost_estimation.sh
ENTRYPOINT cost_estimation.sh
