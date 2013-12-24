elastic_version=0.90.9

elastic_debfile=files/elasticsearch-${elastic_version}.deb

all: ${elastic_debfile}
	docker build -t pgrange/elasticsearch .

${elastic_debfile}:
	curl -O https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-${elastic_version}.deb
