# Project Title

Grafana as a syslog server

## Description

With the use of Grafana to show the data/graphs this will show howto use alloy and loki.

## Getting Started
I use Ubuntu 24.04 in this example and all snippets below will be based on Ubuntu.

### Dependencies

* Linux OS. (In my case Ubuntu 24.04)
* Rsyslog

### Installing

* apt install apt-transport-https software-properties-common wget
* sudo mkdir -p /etc/apt/keyrings/
* import Grafana GPG key
    * wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null
* Add Grafana repo
    * echo  "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
* Update package repo example <apt update>
* Install Grafana example <sudo apt-get install grafana -y>
* Start Grafana
    * sudo systemctl start grafana-server
        * sudo systemctl enable grafana-server.service
* Install Alloy for log ingestion
    * Apt install alloy
    * sudo systemctl start alloy
    * sudo systemctl enable alloy
* Install Loki
    * Apt install loki
    * sudo systemctl start loki
    * sudo systemctl enable loki

* Any modifications needed to be made to files/folders

### Executing program

* How to run the program
* Step-by-step bullets
```
code blocks for commands
```

## Help

* Additional cleanup, logfiles grows fast and a daily cleanup is recommended,g for this we will use logrotate and some small script.
    * Download the following script and place it in /usr/local/bin/del_0b_files.sh (this will clean up 0 byte files and delete files older than 2 days)
* Create a logrotate config to compress the logfiles
    * Place this file in /etc/logrotate.d/remote_FW
```
command to run if program contains helper info
```

## Authors

Contributors names and contact info


## Version History

* 0.1
    * Initial Release

## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details

## Acknowledgments
Grafana.com
Inspiration, code snippets, etc.
