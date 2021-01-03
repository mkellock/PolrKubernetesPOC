FROM grafana/grafana:latest

RUN grafana-cli plugins install redis-datasource && \
    grafana-cli plugins install grafana-github-datasource && \
    grafana-cli plugins install grafana-worldmap-panel && \
    grafana-cli plugins install digrich-bubblechart-panel && \
    grafana-cli plugins install fifemon-graphql-datasource && \
    grafana-cli plugins install aidanmountford-html-panel && \
    grafana-cli plugins install simpod-json-datasource && \
    grafana-cli plugins install grafana-kubernetes-app && \
    grafana-cli plugins install grafana-polystat-panel && \
    grafana-cli plugins install grafana-simple-json-datasource && \
    grafana-cli plugins install snuids-trafficlights-panel