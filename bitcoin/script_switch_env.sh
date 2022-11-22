#!/usr/bin/bash
# 环境切换脚本

if [ -f "bitcoin.conf.test" ]
then
	mv bitcoin.conf bitcoin.conf.prod
	mv bitcoin.conf.test bitcoin.conf
	echo "Now Env: Test"
else
	mv bitcoin.conf bitcoin.conf.test
	mv bitcoin.conf.prod bitcoin.conf
	echo "Now Env: Prod"
fi
