



# TabTab

1.主题

游戏售卖网站（类似steam+taptap）

2.需求分析

用户：

- 登录/注册
- 购买游戏
- 启动游戏
- 评论

游戏开发商：

- 上架游戏
- 下架游戏
- 评论

3.E-R图

<img src="C:\Users\HANDSOME\AppData\Roaming\Typora\typora-user-images\image-20200616203826241.png" style="zoom:100%;" />

4.SQL表格设计

（1）Game表

|  CID   |  GName   |  GTime   | GProducer | GOriPrice | GCurPrice | GSellCopies |
| :----: | :------: | :------: | :-------: | :-------: | :-------: | :---------: |
| 游戏ID | 游戏名称 | 上架时间 |  发行商   | 游戏原价  | 游戏现价  |  售卖份数   |

（2）Customer表

|  CID   | CUsername  | CPassword |  CEmail  |
| :----: | :--------: | :-------: | :------: |
| 客户ID | 客户用户名 | 客户密码  | 客户邮箱 |

（3）Producer表

|   PID    |   PName    |  PUsername   | PPassword  |   PEmail   |
| :------: | :--------: | :----------: | :--------: | :--------: |
| 发行商ID | 发行商名字 | 发行商用户名 | 发行商密码 | 发行商邮箱 |

（4）Sell表

|      PID       |   GID    |
| :------------: | :------: |
| 游戏发行商编号 | 游戏编号 |

（5）Collect表

|   CID    |   GID    |
| :------: | :------: |
| 客户编号 | 游戏编号 |