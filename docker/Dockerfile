FROM wordpress:latest

RUN TERM=dumb curl -o /usr/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;\
	chmod +x /usr/bin/wp;\
	echo '<?php\
	$file = "/usr/local/bin/docker-entrypoint.sh";\
	$content = file_get_contents($file);\
	$modified = preg_replace("/EOPHP(\R\t)fi/m","EOPHP\n\t/usr/local/bin/wp-setup.sh$1fi", $content);\
	file_put_contents($file, $modified);' | php
COPY wp-setup.sh /usr/local/bin
RUN chmod +x /usr/local/bin/wp-setup.sh
