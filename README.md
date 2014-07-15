This is a simple application for uploading pdfs. 
Uploaded documents are indexed in Solr using the sunspot gem to enable full text searching against their contents.

There is no authentication, I use this offline behind a personal firewall to upload scanned docs and
maintain a paperless home office.

To use

* apt-get install poppler-utils (for pdftotext)
* bundle install
* rails s
