# Configuration
## VIM Configuration
1. Install Vundle 
2. Install other plugins with Vundlei

## Apache + PHP Configuration
1. Run Apache  
```
apachectl start  
```
2. Enable PHP for Apache 
Make backup for configuration file    
```
cd /etc/apache2/   
cp httpd.conf httpd.conf.bak  
```  
Edit Apache configuration 
```
vi httpd.conf  
```  
Enable php module, uncomment the following line    
```
LoadModule php5_module libexec/apache2/libphp5.so   
```   
Restart Apache  
```
apachectl restart  
``` 
3. More configuration settings 
Change configuration to support more index files (In DirectoryIndex Section)   
```
DirectoryIndex index.php index.html  
``` 
Set development directories for php (In DocumentRoot field)   
```
DocumentRoot "/Users/yourusername/Sites/"  
<Directory "/Users/yourusername/Sites/">
```  
    
