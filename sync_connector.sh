curl -X PUT -H  "Content-Type:application/json" \
    http://localhost:8083/connectors/sink-elastic-01/config \
    -d '{
        "connector.class": "io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
        "connection.url": "http://elasticsearch7:9200",
        "type.name": "_doc",
        "topics": "search.profiles",
        "schema.ignore": true,
        "key.ignore": "false",
        "write.method": "upsert",
        "transforms": "InsertKey,extractKey",
        "transforms.InsertKey.type": "org.apache.kafka.connect.transforms.ValueToKey",
        "transforms.InsertKey.fields": "id",
        "transforms.extractKey.type": "org.apache.kafka.connect.transforms.ExtractField$Key",
        "transforms.extractKey.field": "id"
      }'
