## Define SRV Records

```shell
% etcdctl put /core/base/svc/fireservice/1 '{"host":"1.fire.local","ttl":60,"priority":10,"port":8081}'

% etcdctl put /core/base/svc/fireservice/2 '{"host":"2.fire.local","ttl":60,"priority":10,"port":8082}'
```

```shell
% etcdctl put /core/base/svc/waterservice/1 '{"host":"1.water.local","ttl":60,"priority":10,"port":8083}'

% etcdctl put /core/base/svc/waterservice/2 '{"host":"2.water.local","ttl":60,"priority":10,"port" :8084}'
```

Query CoreDNS for waterservice 
```shell
dig +short waterservice.svc.base SRV @localhost -p 53530
```

Query CoreDNS for fireservice
```
dig +short fireservice.svc.base SRV @localhost -p 53530
```