#Sélection de l'image de référence spark-base
FROM henrirenee/spark-base:1.0

EXPOSE 7077 8080

ADD bin/spark_running.sh /usr/local/spark/spark_running.sh

RUN chmod +x /usr/local/spark/spark_running.sh

CMD /usr/local/spark/spark_running.sh
