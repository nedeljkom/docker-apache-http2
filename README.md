# HTTP2 Enabled Apache Docker 

HTTP2 Enabled Apache Docker image, with sample TLS configuration
This image also has resource compression preconfigured.

## Building

To build the image, you need to have the TLS Certificate. You can get one for free at [LetsEncrypt](https://letsencrypt.org/). Place the certificate private key and the certificate file in the `certs` directory under a subdirectory with your desired domain name (e.g. www.example.com).

Edit the `site-conf/www.example.com.conf` file and replace all occurrences of *www.example.com* with your domain name. Do the same for the name of the conf file.

After you have completed the previous steps, just run\
```docker build -t apache2 .```\
and you're all set.


## Running

To run the container, just execute:\
```docker run -p 80:80 -p 443:443 -v /path/to/certs/directory/:/etc/tls/ -v /path/to/logs/:/usr/local/apache2/logs/ -d apache2```\
Of course, replace `/path/to/certs/directory/` with the directory in which your domain-specific certificates are stored.

## Troubleshooting

### Log files
You can inspect the log files in the mounted volume directory provided during the run command.
