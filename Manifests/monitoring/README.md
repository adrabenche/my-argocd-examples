kubecolor port-forward svc/prometheus-operator-v1-grafana -n monitoring 8081:80 &
kubecolor port-forward svc/prometheus-operator-v1-prometheus-node-exporter -n monitoring 9100:9100 &
kubecolor port-forward svc/prometheus-operator-v1-kub-prometheus -n monitoring 9090:9090 &

