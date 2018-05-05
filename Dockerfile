FROM rst/band-py
LABEL maintainer="Dmitry Rodin <madiedinro@gmail.com>"
# RUN apt-get update && apt-get install -y --no-install-recommends \
# 		some-dep \
# 	&& rm -rf /var/lib/apt/lists/*


WORKDIR /usr/src/services

ENV HOST=0.0.0.0
ENV PORT=8080
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE ${PORT}
COPY . .

ENTRYPOINT [ "python", "-m"]
