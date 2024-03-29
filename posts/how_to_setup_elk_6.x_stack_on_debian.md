.. title: How to setup ELK 6.x stack with APM addon on a debian server for processing nginx logs
.. slug: elk-6-with-apm-on-debian-for-nginx-log-processing
.. date: 2019-03-17 12:20:05 UTC
.. status: draft

The ELK stack is the most commonly used stack for processing logs. It is important to set this up early on in the product/startup lifecycle. It will complement the information gained from other frontend analytics tools like Google Analytics. Before we dive into the installation steps, we will review what the different components of this stack do. You can skip this section if you are already familiar with those.

ELK Server = Elasticsearch + Logstash + Kibana
===============================================

The server has 3 main components

**Elasticsearch** is a full text storage, search and analytics engine. We can think of it as a system used for indexing and searching through large volumes of text-heavy content, with the ability to auto-guess and flexibly manage the schema of the data in those contents. You can also think of it as a NoSQL database. The use cases are wide as mentioned [here](https://www.elastic.co/guide/en/elasticsearch/reference/6.6/getting-started.html). In our case we are particularly interested in log processing. Logs have millions of records constantly being generated. And an Elasticsearch server/cluster can be used to store each log record as a separate object with fields which can be queried. Elasticsearch shines best when the data is huge. Being a distributed system it can store & index the objects in several nodes and allow the user to analyze them via a clean API. But that doesn't mean that we cannot use it as a single node server. In this article we will be doing just that. 