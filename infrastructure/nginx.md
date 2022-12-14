# Nginx Cheat-Sheet

## Basic configuration arguments and examples

Logging and debugging:

```nginx
error_log <file> <loglevel>
    error_log logs/error.log;
    error_log logs/debug.log debug;
    error_log logs/error.log notice;
```

basic listening ports:

```nginx
listen <port> <options>
        listen 80;
        listen 443 ssl http2;
        listen 443 http3 reuseport; (this is experimental!)
```

header modifcations:
```nginx
add_header <header> <values>
        add_header Alt-svc '$http3=":<port>"; ma=<value>'; (this is experimental!)

ssl_certificate / ssl_certificate_key
        ssl_certificate cert.pem;
        ssl_certificate_key cert.key;

server_name <domains>
    server_name domain1.com *.domain1.com

root <folder>
    root /var/www/html/domain1;

index <file>
    index index.php;

location <url> {
}
    location / {
        root index.html;
        index index.html index.htm;
    }
    location / {
        try_files $uri $uri/ /index.php$is_args$args;
    }
    location ~ \\.php$ {
        fastcgi_pass 127.0.0.1:9000;
        fastcgi_index index.php;
        fastcgi_param  SCRIPT_FILENAME  /scripts$fastcgi_script_name;
        include fastcgi_params;
    }
    location ~ /\\.ht {
        deny all;
    }
    location = /favicon.ico {
        log_not_found off;
        access_log off;
    }
    location = /robots.txt {
        log_not_found off;
        access_log off;
        allow all;
    }
    location ~* .(css|gif|ico|jpeg|jpg|js|png)$ {
        expires max;
        log_not_found off;
}
```
## Reverse Proxy
### Show Client's real IP
```nginx
server {
	server_name example.com;
	location / { 
		proxy_pass http://localhost:4000;
		
		# Show clients real IP behind a proxy
		proxy_set_header X-Real-IP $remote_addr;
		proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
	}
}
```

___
## **NGINX GZIP**

https://ubiq.co/tech-blog/how-to-enable-nginx-gzip-compression/
___
# LOAD BALANCING
https://youtu.be/v81CzSeiQjo

https://youtu.be/a41jxGP9Ic8


___

## INSTALLATION ON UBUNTU

**Comment installer & Configurer Nginx sur Ubuntu 20.04**

https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04-fr


## **How to install and configure NGINX on Fedora**

https://www.godaddy.com/garage/how-to-install-and-configure-nginx-on-fedora/