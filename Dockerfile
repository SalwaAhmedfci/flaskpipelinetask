FROM python:3.8.10
WORKDIR /app
COPY . /app
RUN /usr/local/bin/python -m pip install --upgrade pip && \
python3 -m  pip install -r requirements.txt && \
pip install --upgrade jinja2 
ENV FLASK_APP=hello.py
# CMD ["flask","run"]
CMD ["python3", "-m", "flask", "run"]