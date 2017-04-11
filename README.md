<h1><b>此项目已经和transmission-web-control合并，请前往<a href="https://github.com/hitechbeijing/transmission-web-control">https://github.com/hitechbeijing/transmission-web-control</a>获取最新代码</b></h1>
<h1><b>关于此项目</b></h1>
<p>此项目目的是为群晖套件DownloadStation增加一个第三方的web ui，用于控制DownloadStation自带的transmission-daemon上传与下载。从而避免安装一个完整的transmission套件。</p>
<p>web ui来自transmission自带的web ui与@ronggang的transmission-web-control的整合</p>
<p>在此感谢@ronggang的制作</p>
<h3><b>支持的DSM版本</b></h3>
<p>DSM 5.0及以上版本</p>
<h3><b>使用方法</b></h3>
<p>下载并执行安装脚本：</p>
<pre>
<code>
wget https://github.com/hitechbeijing/downloadstation-web-control/raw/master/release/easy_install.sh
sudo sh easy_install.sh
</code>
</pre>
<p>注意，此脚本需以root权限执行。</p>
<p>脚本执行完毕后在浏览器地址栏输入http://nas地址:9093 即可访问。</p>
