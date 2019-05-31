FROM croservices/cro-http-websocket:0.8.0
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN zef install --deps-only . && perl6 -c -Ilib service.p6
ENV INGREDIENT_GURU_HOST="0.0.0.0" INGREDIENT_GURU_PORT="10000"
EXPOSE 10000
CMD perl6 -Ilib service.p6
