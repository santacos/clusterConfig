FROM velvia/spark-jobserver:0.6.1.mesos-0.25.0.spark-1.5.2
EXPOSE 32456-32472                                    
EXPOSE 8090
ADD ./docker.conf /app/docker.conf      
ADD ./hdfs-site.xml /app/cluster-config/hdfs-site.xml  
ADD ./yarn-site.xml /app/cluster-config/yarn-site.xml
ENV YARN_CONF_DIR=/app/cluster-config               
ENV HADOOP_CONF_DIR=/app/cluster-config             



