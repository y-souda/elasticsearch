FROM docker.elastic.co/logstash/logstash:8.1.2
RUN bin/logstash-plugin install logstash-input-websocket
