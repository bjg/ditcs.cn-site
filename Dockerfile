FROM golang:latest

RUN go get -u -v github.com/spf13/hugo
ADD docroot /www/docroot
WORKDIR /www/docroot
EXPOSE 443
CMD /go/bin/hugo server --baseURL="ditcs.cn" --port=443 --bind=0.0.0.0 --theme=hugo-creative-theme
