FROM golang:latest

RUN go get -u -v github.com/spf13/hugo
ADD docroot /www/docroot
WORKDIR /www/docroot
EXPOSE 80
CMD /go/bin/hugo server --baseURL="d7et.disce.re" --port=80 --bind=0.0.0.0 --theme=hugo-creative-theme
