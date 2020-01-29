#!/bin/sh

# build pdf (change if necessary)
latexmk master.tex

# create release
res=`curl -H "Authorization: token $GITHUB_TOKEN" -X POST https://api.github.com/repos/$GITHUB_REPOSITORY/releases \
-d "
{
  \"tag_name\": \"${GITHUB_SHA}\",
  \"target_commitish\": \"$GITHUB_SHA\",
  \"name\": \"master.pdf ${GITHUB_SHA}\",
  \"draft\": false,
  \"prerelease\": false
}"`

echo ${res}
# extract release id
rel_id=`echo ${res} | python3 -c 'import json,sys;print(json.load(sys.stdin)["id"])'`

# upload built pdf
curl -H "Authorization: token $GITHUB_TOKEN" -X POST https://uploads.github.com/repos/$GITHUB_REPOSITORY/releases/${rel_id}/assets?name=master.pdf\
  --header 'Content-Type: application/pdf'\
  --upload-file master.pdf
