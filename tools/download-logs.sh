#!/bin/bash
scp -r  -i ~/.ssh/id_github_rsa -P 2222 test@localhost:/home/test/private-isu/webapp/logs ~/workspace/private-isu/webapp

