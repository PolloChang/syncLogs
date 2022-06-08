#! /bin/bin

function getProjectConfig {
    grep "${1}" projection.properties |cut -d'=' -f2
}

export basedir=$(getProjectConfig 'localPath')  # 專案環境目錄

source $basedir/lib/createSource.sh
source $basedir/lib/log.sh
source $basedir/lib/properties.sh

export backUpPath=$(prop 'backUpPath')

while read logFileLisI ; do

    zc_log INFO ": 開始同步 " ${logFileLisI}

    rsync -qrupt ${logFileLisI}/. "${backUpPath}"
    zc_log INFO ":  結束同步 ${logFileLisI}" ;

done < $logFileLisL