sudo docker run -d --name=mariadb -p 3310:3306 -e TZ=Asia/Kolkata -v ~/database_data_dir/mariadb_data_dir:/var/lib/mysql  -e MYSQL_ROOT_PASSWORD=root mariadb
