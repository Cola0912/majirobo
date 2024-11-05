#!/bin/bash
# このスクリプトはmajirobo.txtのアスキーアートに吹き出しを付けて表示します

if [ -z "$1" ]; then
    echo "吹き出しに表示するメッセージを指定してください。"
    exit 1
fi

# 吹き出しの内容を格納
message="$1"

# 全角を2文字、半角を1文字としてカウントする
message_length=$(echo -n "$message" | awk '{len=0; for(i=1;i<=length;i++){c=substr($0,i,1); if (c ~ /[一-龥ぁ-ゔァ-ヴー々〆〤]/) len+=2; else len++} print len}')

# 吹き出しの上部と下部の枠を ^ と ~ に設定して表示
top_line=$(printf '^%.0s' $(seq 1 $message_length))
echo " $top_line "
echo "< $message >"
bottom_line=$(printf '~%.0s' $(seq 1 $message_length))
echo " $bottom_line "

# 吹き出しの下に斜め線を複数行で追加
for (( i=0; i<5; i++ )); do
    for (( j=0; j<message_length/2 + i; j++ )); do
        printf " "
    done
    echo "\\"
done

# majirobo.txtの内容を表示
cat majirobo.txt
