# 使用基础的 Tomcat 镜像
FROM tomcat:8.5-jdk8

# 复制后端 WAR 文件到 Tomcat webapps 目录
COPY ./webapp/*.war /usr/local/tomcat/webapps/

# 复制前端文件到 Tomcat webapps 目录
COPY ./frontend/aiot-system /usr/local/tomcat/webapps/aiot-system
COPY ./frontend/liuhao-system /usr/local/tomcat/webapps/liuhao-system
COPY ./frontend/ZXLDataScreen /usr/local/tomcat/webapps/ZXLDataScreen

# 暴露端口
EXPOSE 8080

# 启动 Tomcat
CMD ["catalina.sh", "run"]
