class CashRegister
end
 
cr = CashRegister.new

# 購入前の金額を保存
before_yen = cr.stocked_cash_yen

# レジの中身
puts "before_yen = #{before_yen}"

# 9900円の商品を 100円 9個、 １万円札 1枚で買った
result = cr.buy(9900, {
  unit_100yen: 9,
  unit_10000yen: 1,
})
 
# お釣り
puts "result = #{result}"

# 購入金額の分　金額が増える
puts "add_cash_yen = #{cr.stocked_cash_yen - before_yen}"

#########################################################################
# 出力結果
# before_yen = 1666600
# result =　{:unit_1000yen=>1}
# add_cash_yen = 9900

# 初期化時に硬貨や紙幣をレジに入れる
# 1万円札, 5千円札,千円札, 500円, 100円, 50円, 10円, 5円, 1円
# 変数名について
# unit_1yen = 1円
# unit_5000yen = 5千円札
# デフォルトは全部 100枚 or 100枚持ってる


####### 1 #######
# def stocked_cash_yenの関数を作る
# レジにある今の硬貨、紙幣を数えて円で返す

# def buyの関数を作る
# レジから購入金額、入金（硬貨、紙幣）を入れると最適なお釣り（硬貨、紙幣）を返してくれる

####### 2 #######
# 2000円札が取り扱う場合コード変更を最小に済ませるように記載
