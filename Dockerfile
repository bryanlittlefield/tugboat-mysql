# ============================
# PULL OFFICIAL MYSQL REPO
# ============================
FROM mysql:8.0

# Fix permissions
RUN usermod -u 1000 mysql
RUN groupmod -g 1000 mysql

COPY config/my.cnf /etc/mysql/conf.d/
