# 使用官方的 Node.js 镜像作为基础镜像
FROM node:14

# 设置工作目录
WORKDIR /app

# 将 HTML 文件复制到容器中
COPY index.html /app/

# 暴露一个端口，如果你的 HTML 文件需要使用端口
EXPOSE 9060

# 启动一个简单的 HTTP 服务器，用于提供 HTML 文件
CMD ["npx", "http-server", "-p", "80"]
