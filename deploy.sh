#!/bin/sh

hugo --theme=landing-page-hugo
#s3cmd sync --delete-removed --acl-public --reduced-redundancy --cf-invalidate public/ s3://davestagner.com/ --verbose

gsutil rsync -R public gs://thetragedyofobiwankenobi.com
gsutil acl ch -r -u AllUsers:R gs://thetragedyofobiwankenobi.com
