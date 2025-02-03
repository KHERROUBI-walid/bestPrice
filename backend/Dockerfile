FROM python:3.13
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
 
# Expose the Django port
EXPOSE 8001
 
# Run Django’s development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]