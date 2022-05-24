# ============================
# PULL OFFICIAL MYSQL REPO
# ============================
FROM mysql:8

# Fix permissions
RUN usermod -u 1000 mysql
RUN groupmod -g 1000 mysql

RUN chown -R mysql:mysql /var/run/mysqld

COPY config/my.cnf /etc/mysql/conf.d/
