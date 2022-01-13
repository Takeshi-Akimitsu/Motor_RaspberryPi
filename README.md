# Motor_RaspberryPi
ロボットシステム学の授業で製作したデバイスドライバを参考にした２つのモータを制御するデバイスドライバを製作した

# 動作環境
|OS|Ubuntu Server 20.04.3 LTS|
|---|---|
|ハードウェア|Raspberry Pi 3|
|モータ|タミヤ　3速クランクギヤーボックスセット ×2|
|モータドライバ|東芝　TB6643KQ ×2|

 # 配線
画像
![回路図](https://user-images.githubusercontent.com/97353827/149396445-e3beb1fa-9635-4022-901a-dfd397891cb1.jpg)

<左モータ>  
　1.TB6643KQの1番ピンとGPIO23を繋ぐ  
　2.TB6643KQの2番ピンとGPIO24を繋ぐ  
　3.TB6643KQの4番ピンとGPIO GNDを繋ぐ  
　4.TB6643KQの3,5番ピンと右モータの端子をそれぞれ繋ぐ  
　5.3で繋いだGNDと電源の-側に繋ぐ  
　6.TB6643KQの7番ピンと電源の+側を繋ぐ  

<右モータ>  
　1.TB6643KQの1番ピンにGPIO25を繋ぐ  
　2.TB6643KQの2番ピンにGPIO27を繋ぐ  
　3.TB6643KQの4番ピンにGPIO GNDを繋ぐ  
　4.TB6643KQの3,5番ピンに右モータの端子をそれぞれ繋ぐ  
　5.3で繋いだGNDを電源の-側に繋ぐ  
　6.TB6643KQの7番ピンに電源の+側を繋ぐ


　この2つの回路を電源に対し並列で接続し、電圧12V、電流0.25Aを印加した


[TBTB6643KQデータシート](http://www.kyohritsu.jp/eclib/OTHER/DATASHEET/TOSHIBA/tb6643kq.pdf)

# インストール方法
```
git clone git@github.com:Takeshi-Akimitsu/Motor_RaspberryPi.git
cd mymotor
make
sudo insmod mymotor.ko  
sudo chmod 666 /dev/mymotor0  
```

# 実行
右:正転　左:正転　(前進)
```
echo f > /dev/mymotor0 
```

右:逆転　左:逆転　(後進)
```
echo b > /dev/mymotor0 
```

右:正転　左:逆転　(右回転)
```
echo r > /dev/mymotor0 
```

右:逆転　左:正転　(左回転)
```
echo l > /dev/mymotor0 
```

右:停止　左:停止　(ブレーキ)
```
echo s > /dev/mymotor0 
```

# アンインストール
```
sudo rmmod mymotor 
```

# 実行結果


# 参考

