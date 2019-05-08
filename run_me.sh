kubectl apply -f elastic_stack/base/wazuh-ns.yaml

rancher kubectl apply -f elastic_stack/elasticsearch/elasticsearch-svc.yaml
#rancher kubectl apply -f elastic_stack/elasticsearch/cluster/elasticsearch-api-svc.yaml
#rancher kubectl apply -f elastic_stack/elasticsearch/cluster/elasticsearch-data-sts.yaml
#rancher kubectl apply -f elastic_stack/elasticsearch/cluster/elasticsearch-master-sts.yaml

rancher kubectl apply -f elastic_stack/elasticsearch/single-node/elasticsearch-api-svc.yaml
rancher kubectl apply -f elastic_stack/elasticsearch/single-node/elasticsearch-sts.yaml

rancher kubectl apply -f elastic_stack/kibana/kibana-svc.yaml
rancher kubectl apply -f elastic_stack/kibana/nginx-svc.yaml

rancher kubectl apply -f elastic_stack/kibana/kibana-deploy.yaml
rancher kubectl apply -f elastic_stack/kibana/nginx-deploy.yaml

rancher kubectl apply -f elastic_stack/logstash/logstash-svc.yaml
rancher kubectl apply -f elastic_stack/logstash/logstash-deploy.yaml


rancher kubectl apply -f wazuh_managers/wazuh-master-svc.yaml
rancher kubectl apply -f wazuh_managers/wazuh-cluster-svc.yaml
rancher kubectl apply -f wazuh_managers/wazuh-workers-svc.yaml

rancher kubectl apply -f wazuh_managers/wazuh-master-conf.yaml
rancher kubectl apply -f wazuh_managers/wazuh-worker-0-conf.yaml
rancher kubectl apply -f wazuh_managers/wazuh-worker-1-conf.yaml

rancher kubectl apply -f wazuh_managers/wazuh-master-sts.yaml
rancher kubectl apply -f wazuh_managers/wazuh-worker-0-sts.yaml
rancher kubectl apply -f wazuh_managers/wazuh-worker-1-sts.yaml
