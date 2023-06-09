lb_dns_name=$(aws elbv2 describe-load-balancers --names <load_balancer_name> --query 'LoadBalancers[].DNSName' --output text)
lb_ip=$(dig +short $lb_dns_name)
echo $lb_ip
