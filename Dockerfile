# Bước 1: Sử dụng JRE mỏng nhẹ để chạy app
FROM eclipse-temurin:21-jre-jammy

# Bước 2: Thiết lập thư mục làm việc trong container
WORKDIR /app

# Bước 3: Copy file .jar đã build từ bước CI vào container
# Lưu ý: Tên file .jar phải khớp với tên trong thư mục target/
COPY target/*.jar app.jar

# Bước 4: Lệnh để chạy ứng dụng
ENTRYPOINT ["java", "-jar", "app.jar"]