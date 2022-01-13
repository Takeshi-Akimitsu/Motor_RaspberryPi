# Motor_RaspberryPi
ロボットシステム学の授業で製作したデバイスドライバを参考にした２つのモータを制御するデバイスドライバです。

# 動作環境
|OS|Ubuntu Server 20.04.3 LTS|
|---|---|
|ハードウェア|Raspberry Pi 3|
|モータ|タミヤ　3速クランクギヤーボックスセット ×2|
|モータドライバ|東芝　TB6643KQ ×2|

# 配線
画像
![回路図](https://user-images.githubusercontent.com/97353827/149396445-e3beb1fa-9635-4022-901a-dfd397891cb1.jpg)

<右モータ>
TB6643KQの1番ピンにGPIO23を繋ぐ
TB6643KQの1番ピンにGPIO24を繋ぐ
