

# Create build stage based on buster image
FROM golang:1.18-alpine3.15
# Create working directory under /app
WORKDIR /app
# Copy over all go config (go.mod, go.sum etc.)
COPY go.* ./
# Install any required modules
RUN go mod download
# Copy over Go source code
COPY *.go ./
# Copy file html to Docker
COPY ./html ./html
# Run the Go build and output binary under hello_go_http
RUN go build -o/App_B
# Make sure to expose the port the HTTP server is using
EXPOSE 9921
# Run the app binary when we run the container
ENTRYPOINT [“ /App_B”]
