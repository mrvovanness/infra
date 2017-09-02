#!/bin/bash

set -e
su - appuser -c "
  git clone https://github.com/Artemmkin/reddit.git
  cd reddit && bundle install && puma -d
"
