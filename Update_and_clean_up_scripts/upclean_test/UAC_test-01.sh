#!/bin/bash

do_sth() {
	if [ `ls /bin/apt-get` = /bin/apt-get ];then
	sudo aptitude update &>/dev/null
	sudo apt update &>/dev/null
	sudo aptitude upgrade -y &>/dev/null
	sudo apt-get upgrade -y &>/dev/null
	sudo aptitude install -f -y &>/dev/null
	sudo apt-get install -f -y &>/dev/null
	sudo aptitude safe-upgrade -y &>/dev/null
	sudo aptitude dist-upgrade -y &>/dev/null
	sudo apt-get dist-upgrade -y &>/dev/null
	else
	exit 0
	fi
}

progress() {
        #进度条程序
        local main_pid=$1
        local length=30
        local ratio=1
        while [ "$(ps -p ${main_pid} | wc -l)" -ne "1" ] ; do
                mark='>'
                progress_bar=
                for i in $(seq 1 "${length}"); do
                        if [ "$i" -gt "${ratio}" ] ; then
                                mark='-'
                        fi
                        progress_bar="${progress_bar}${mark}"
                done
                printf "UPDATING: ${progress_bar}\r"
                ratio=$((ratio+1))
                #ratio=`expr ${ratio} + 1`
                if [ "${ratio}" -gt "${length}" ] ; then
                        ratio=1
                fi
                sleep 0.1
        done
}

do_sth &
do_sth_pid=$(jobs -p | tail -1)

progress "${do_sth_pid}" &
progress_pid=$(jobs -p | tail -1)

wait "${do_sth_pid}"
printf "UPDATING: done                          \n"

do_sth() {
	#rm -rf /tmp/*
	#sudo rm -rf $HOME/.local/share/Trash/files/
	#sudo find /opt -name "*.log" -exec rm -rf {} \;
	rm -rf /tmp/* &>/dev/null
	sudo find /opt -name "*.log" -exec rm -rf {} \; &>/dev/null
	sudo rm -rf $HOME/.local/share/Trash/files/ &>/dev/null
	sudo apt autoremove -y &>/dev/null
	sudo aptitude autoclean -y &>/dev/null
	sudo apt autoclean -y &>/dev/null
	sudo aptitude clean &>/dev/null
	sudo apt clean &>/dev/null
	dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P ${tty_reset} &>/dev/null
}

progress() {
        #进度条程序
        local main_pid=$1
        local length=30
        local ratio=1
        while [ "$(ps -p ${main_pid} | wc -l)" -ne "1" ] ; do
                mark='>'
                progress_bar=
                for i in $(seq 1 "${length}"); do
                        if [ "$i" -gt "${ratio}" ] ; then
                                mark='-'
                        fi
                        progress_bar="${progress_bar}${mark}"
                done
                printf "CLEANING: ${progress_bar}\r"
                ratio=$((ratio+1))
                #ratio=`expr ${ratio} + 1`
                if [ "${ratio}" -gt "${length}" ] ; then
                        ratio=1
                fi
                sleep 0.1
        done
}

do_sth &
do_sth_pid=$(jobs -p | tail -1)

progress "${do_sth_pid}" &
progress_pid=$(jobs -p | tail -1)

wait "${do_sth_pid}"
printf "CLEANING: done                          \n"
