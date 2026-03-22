#!/bin/bash

for f in *.png; do
  vips copy "$f" "${f%.png}.jpg"
done
