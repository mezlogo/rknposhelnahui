add to xray-config -> outbounds -> freedom 

```yml
"settings": {
  "domainStrategy": "UseIPv4"
}
```

xray-config -> dns -> Add Server:

Google DNS (DoH)

```
Address: https://8.8.8.8/dns-query
Port: 443.
Query Strategy: UseIPv4

+ Domains:
    geosite:google
    geosite:geolocation-!cn
Skip Fallback: enable
Final Query: enable
```

Cloudflare DNS (DoH), 1.1.1.1, the same

Inbound settings - enable sniffing
