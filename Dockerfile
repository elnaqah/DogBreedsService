FROM swift:5.9 AS build

WORKDIR /build

COPY . .

RUN swift build --configuration release --product DogBreedsService

FROM swift:5.9-slim AS runtime

WORKDIR /app

COPY --from=build /build/.build/release/DogBreedsService /app/DogBreedsService

RUN chmod +x /app/DogBreedsService

EXPOSE 8080

USER root
CMD ["./DogBreedsService"]