
#  majiresu.sh

` majiresu.sh` は、指定したテキストを吹き出し形式で表示し、その下に`majirobo.txt`に保存されたアスキーアートを表示するシェルスクリプトです。吹き出しはメッセージの長さに応じてサイズが自動的に調整され、吹き出しの下からアスキーアートに向かって斜めに「\」が伸びるように表示されます。

## 必要なファイル

- **majirobo.txt**: 吹き出しの下に表示するアスキーアートが保存されているファイルです。` majiresu.sh`と同じディレクトリに配置してください。

## 使い方

### スクリプトの実行権限を付与

ダウンロードした` majiresu.sh`スクリプトに実行権限を付与する必要があります。以下のコマンドで実行権限を付与してください。

```bash
chmod +x  majiresu.sh
```

### コマンドの実行

スクリプトを実行して、メッセージとアスキーアートを表示します。

```bash
./ majiresu.sh "表示したいメッセージ"
```

#### 例

以下のように実行することで、「ミニロボ大会開催中！！」というメッセージ付きの吹き出しが表示され、その下に`majirobo.txt`のアスキーアートが続きます。

```bash
./ majiresu.sh "運動すりゃ痩せるのに"
```

#### 出力例

```plaintext
  ^^^^^^^^^^^^^^^^^^^^^
< 運動すりゃ痩せるのに >
  ~~~~~~~~~~~~~~~~~~~~~

        \
         \
          \
           \
            \

               ..      ..-..     .. 
                ??!   JuO1<+-  .??!
               ....   jwXXzw:  .(((.             
               .^      ?OuC!     .!
                        JZ)                 
                   .(ztl=???=+-.                
                .dVXuZtlz?>>?=zOvo,
              .VfWNSkwrO=?+>?zqHHwZk,         
            .dfffMMM8ztll=>??=dMMSXZyl    
            JpffVWWX0Xwwyw&zuOOtvwXXfW;          
           ,WffWffWXI<<<<<<<<<1rwuZXVVW.      
           XWfWWVffXXvZll=???=trrXuXVVW)
           @@@@@@HBWHWWWVZOtvwXVUHkg@g@Hl 
         (,@H@@@NRv1dHWXZ<OkvXkv+dqmg@g@Wk+     
   .JaaJX' H@@@@@HHWHpfyWW9wwXdHHHmgg@g] jXWHHm,
 .WW=7TWH. @@@@@@@MHkpSCOzzzwuyWpWmg@@g] JHY_?4H.
 .q)   dW~ @@@@@@@Hmk0d01z=zOOXVpWHmggg] Ob-  .W 
  (  .dX=  H@@@@@@gmHrVykzzrrzyWpkqH@@m]  ?Wr  !
           @@@@@@@@mqkZW0OrrIdyfpHqmHgg]
           H@@@@g@gmqbWAztzzvXZVpWkHggg]
            ~  !~j0OC~~       w1w 
                 ,Vz}         O?w
              ..++zzz.       .zzzzz+.
            .JkkXXXkk[       .XkXWWkWn        
             """"""""'       ,""""""""
        
```

## カスタマイズ

- **吹き出しの大きさ**: 吹き出しはメッセージの長さに応じて自動的に調整されます。全角文字は2文字、半角文字は1文字としてカウントされます。
- **斜め線の長さ**: スクリプト内のループで指定されている行数（デフォルトは5行）を変更することで、斜め線「\」の長さを調整できます。
