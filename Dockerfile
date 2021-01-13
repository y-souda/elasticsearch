FROM amazon/opendistro-for-elasticsearch:1.11.0
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji
