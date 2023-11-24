$TTL    604800
@       IN      SOA     dns.example.com. admin.example.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      dns.example.com.
@       IN      A       172.28.0.5
dns     IN      A       172.28.0.5
host    IN      A       172.28.0.1
bastion IN      A       172.28.0.2
other   IN      A       172.28.0.3
web     IN      A       172.28.0.4
