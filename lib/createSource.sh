log=$basedir"/log/"`date +%Y%m%d`".log"  #操作日誌存放路徑 
fsize=2000000      #如果日誌大小超過上限，則儲存舊日誌，重新生成日誌檔案    

export propertiesL=$basedir"/config/settings.properies"
export logFileLisL=$basedir"/config/logFileList.txt"