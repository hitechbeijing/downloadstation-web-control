#! /bin/sh

#代码修改自ronggang的transmission-web-control安装脚本
#在此感谢ronggang

index="index.html"
tmpFolder="/tmp"
packname="transmission-control.tgz"
host="https://github.com/hitechbeijing/downloadstation-web-control/raw/master/release/"
downloadurl="$host$packname"
ROOT_UID=0

cd "$tmpFolder"
# 找出web ui 目录
folderIsExist=0
echo "Searching Transmission Web Folder..."

# 感谢 yumin9822 提供的代码
rootFolder="/var/packages/DownloadStation/target"

echo "Folder: ""$rootFolder""..."
if [ -d "$rootFolder" ]; then
	webFolder="$rootFolder"
	folderIsExist=1
fi

# 如果目录存在，则进行下载和更新动作
if [ $folderIsExist = 1 ]; then
	echo "Downloading Transmission Web Control..."
	wget "$downloadurl"
	echo "Installing..."
	tar -xzvf "$packname"
	rm "$packname"
	
	# 复制文件到
	cp -r web "$rootFolder"
	cd "$rootFolder"
	chown DownloadStation:DownloadStation web
	cd "$rootFolder/web"
	chown -R DownloadStation:DownloadStation *
	chown DownloadStation:DownloadStation *
	cd "/usr/local/share"
	mkdir transmission
	cd transmission
	ln -s "$rootFolder/web" "./web"
	"$rootFolder/sbin/transmissiond"
	echo "Done."
else
	echo "##############################################"
	echo "#"
	echo "# ERROR : DownloadStation Package is not Installed."
	echo "#"
	echo "##############################################"
fi
rm -rf "$tmpFolder/web"