# golang-htmx
basic go app with gin and htmx

## Run
Clone repo
```bash
git clone https://github.com/JuHaNi654/golang-htmx.git
```
Install deps
```bash
go mod tidy
```
Run app
```bash
go run .
```
## Run on docker
Build image
```bash
docker build -t server:latest .
```
Run container
```bash
docker run --rm -p 8080:8080 server:latest
```
