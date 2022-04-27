#!/bin/bash

kcat -b localhost:9092 -t search.profiles -P -T -l ./data/profiles.kcat
