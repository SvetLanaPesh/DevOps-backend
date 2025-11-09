# Используем официальный Python образ
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл зависимостей
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем исходный код приложения
#COPY app.py .
COPY . .

# Создаем директорию для данных и устанавливаем правильные права
#RUN mkdir -p /app && chmod 755 /app

# Открываем порт приложения
EXPOSE 5000

# Команда запуска приложения
CMD ["python", "app.py"]
