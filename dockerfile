# ใช้ Nginx เป็น Base Image
FROM nginx:latest

# คัดลอกไฟล์เว็บไปยังโฟลเดอร์ของ Nginx
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY photo/ /usr/share/nginx/html/photo/

# คัดลอก config ของ Nginx
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# เปิดพอร์ต 80
EXPOSE 80

# เริ่มต้น Nginx
CMD ["nginx", "-g", "daemon off;"]
