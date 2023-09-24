podman run -d --name oradb \
-p 1521:1521 \
-e ORACLE_PWD=lol \
-e ORACLE_CHARACTERSET=AL32UTF8 \
container-registry.oracle.com/database/free:latest
