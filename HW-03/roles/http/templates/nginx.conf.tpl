server {
        listen 80; 
        root  change config;
        server_name localhost;
        index index.html index.html;
 	
 	location / {
 		try_files $uri &uri/ =404;
 	}

        location ~* \.php$ {
        try_files $uri = 404;
        fastcgi_pass 127.0.0.1:9000;
        fastcgi_index index.php;
    }

    location ~ /\.ht {
                deny all;
        }
}
