#!/bin/bash

echo "STARTING APP"

# Run Spark example
#${SPARK_HOME}/bin/spark-submit --class org.apache.spark.examples.JavaSparkPi ${SPARK_HOME}/examples/jars/spark-examples_2.12-3.0.1.jar


# Run custom app with enabled metrics for Prometheus
${SPARK_HOME}/bin/spark-submit \
    --class homework2.DataApiHomeWorkTaxi \
    --conf spark.ui.prometheus.enabled=true \
    --conf spark.executor.processTreeMetrics.enabled=true \
    --conf spark.metrics.conf=${SPARK_HOME}/conf/metrics.properties \
    otus-hadoop-homework_2.12-0.1.jar
