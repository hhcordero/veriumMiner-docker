# What is veriumMiner 

[veriumMiner](https://github.com/fireworm71/veriumMiner) is a multi-threaded CPU miner for mining [Verium](https://portal.vericoin.info) using scrypt². 


## How to use this image

- If you're unfamiliar with the various options available in cpuminer, you can get help by typing:

        docker container run --rm hhcordero/veriumminer --help

- Start mining some Verium (in background):

        docker container run -d --name [CONTAINER_NAME] hhcordero/veriumminer \
                          -n 1048576 -o [URL] -u [USER] -p [PASSWORD]

- An example using [Poolium](https://www.poolium.win) mining pool (there are others available):

        docker container run -d --name miner1 hhcordero/veriumminer \
                    -n -o stratum+tcp://vrm.poolium.win:3332 \
                    -u Weblogin.WorkerName -p WorkerPassword

- Check the containers logs to see how things are progressing:

        docker container logs -f [CONTAINER_NAME]
