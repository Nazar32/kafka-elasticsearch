See related post here: https://rmoff.net/2019/10/07/kafka-connect-and-elasticsearch/

## Usage:

---

1. Make sure `docker` and `docker-compose` are installed
2. Install `kcat`:

```
brew install kcat
```

3. Run docker containers via: 
```
docker-compose up -d
```
4. Once all containers are up, run the following command, which will setup kafka to ES messages sync, i.e. all messages recived by kafka topic defined by `topics` setting of this file, will eventually appear in ES index named the same as the topic
```
./sync_connector.sh
```
5. Run the command, which will send the message defined in `./data/profiles.kcat` file to kafka:
   
```
./load_sample_data.sh
```