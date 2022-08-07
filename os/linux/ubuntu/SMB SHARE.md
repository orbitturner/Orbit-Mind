## **MOUNT SMB SHARE IN UBUNTU**

```bash
# ========================================
sudo mkdir /media/share
# ========================================
sudo nano /root/.examplecredentials
# ========================================
--> INSERT
username=example_username
password=example_password
# ========================================
sudo chmod 400 /root/.examplecredentials
# ========================================
sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.examplecredentials,uid=1000,gid=1000,file_mode=0644 //qcmemory/QCMEMORYNAS/QCWORKSPACE/ /media/share
# ========================================
 sudo nano /etc/fstab
# ========================================
--> INSERT
//qcmemory/QCMEMORYNAS/QCWORKSPACE/ /media/share cifs vers=3.0,credentials=/.examplecredentials,uid=1000,gid=1000,file_mode=0644
# ========================================
```