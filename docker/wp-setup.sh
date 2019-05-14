wp --allow-root  core is-installed 
if [ "$?" = '1' ]; then
	wp --allow-root core install  --url=$WORDPRESS_SITE_URL --title=Example --admin_user=admin --admin_password=admin --admin_email=demo@demo.com
	wp --allow-root rewrite structure '/%postname%/'
	wp --allow-root plugin install --activate show-current-template relative-url debug-bar kint-debugger
fi
