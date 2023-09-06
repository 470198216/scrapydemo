#!/bin/bash
set
cd ../
sudo apt-get update
sudo apt-get install python3-dev python3-pip libxml2-dev libxslt1-dev zlib1g-dev libffi-dev libssl-dev
#sudo pip3 install scrapy
sudo pip3 install scrapy

#Item 定义结构化数据字段，用来保存爬取到的数据对象(mySpider)
scrapy startproject mySpider

#创建一个名为itcast的爬虫
cd scrapydemo/mySpider/spider
scrapy genspider itcast "itcast.cn"

cd ../../../
cd scrapydemo/mySpider

#编译运行
scrapy crawl itcast
scrapy crawl itcast -o teachers.json
#json lines格式，默认为Unicode编码
scrapy crawl itcast -o teachers.jsonl
#csv 逗号表达式，可用Excel打开
scrapy crawl itcast -o teachers.csv
#xml格式
scrapy crawl itcast -o teachers.xml
