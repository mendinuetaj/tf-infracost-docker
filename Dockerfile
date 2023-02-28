FROM infracost/infracost:ci-latest
COPY cost_estimation.sh /usr/local/bin
RUN  chmod +x /usr/local/bin/cost_estimation.sh && mkdir /code
ENTRYPOINT cost_estimation.sh
