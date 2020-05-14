FROM croservices/cro-http-websocket:0.8.3
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN zef install --deps-only . && perl6 -c -Ilib service.p6
ENV CALORIES_PORT="10000" CALORIES_HOST="0.0.0.0"
EXPOSE 10000
CMD perl6 -Ilib service.p6
