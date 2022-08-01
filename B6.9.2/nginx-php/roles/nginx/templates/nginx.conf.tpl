server {
        listen 80; 
        root  change config;
        server_name localhost;
        index index.php index.php;
 	
 	location / {
 		try_files $uri &uri/ =404;
 	}

        location ~* \.php$ {
        try_files $uri = 404;
        fastcgi_pass unix:/var/run/php/php8.0-fpm.sock; # подключаем сокет php-fpm
    }

    location ~ /\.ht {
                deny all;
        }
}
