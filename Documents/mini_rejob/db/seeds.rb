# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Area.create(:name => '北海道')
Area.create(:name => '青森県')
Area.create(:name => '岩手県')
Area.create(:name => '宮城県')
Area.create(:name => '秋田県')
Area.create(:name => '山形県')
Area.create(:name => '福島県')
Area.create(:name => '茨城県')
Area.create(:name => '栃木県')
Area.create(:name => '群馬県')
Area.create(:name => '埼玉県')
Area.create(:name => '千葉県')
Area.create(:name => '東京都')
Area.create(:name => '神奈川県')
Area.create(:name => '新潟県')
Area.create(:name => '富山県')
Area.create(:name => '石川県')
Area.create(:name => '福井県')
Area.create(:name => '山梨県')
Area.create(:name => '長野県')
Area.create(:name => '岐阜県')
Area.create(:name => '静岡県')
Area.create(:name => '愛知県')
Area.create(:name => '三重県')
Area.create(:name => '滋賀県')
Area.create(:name => '京都府')
Area.create(:name => '大阪府')
Area.create(:name => '兵庫県')
Area.create(:name => '奈良県')
Area.create(:name => '和歌山県')
Area.create(:name => '鳥取県')
Area.create(:name => '島根県')
Area.create(:name => '岡山県')
Area.create(:name => '広島県')
Area.create(:name => '山口県')
Area.create(:name => '徳島県')
Area.create(:name => '香川県')
Area.create(:name => '愛媛県')
Area.create(:name => '高知県')
Area.create(:name => '福岡県')
Area.create(:name => '佐賀県')
Area.create(:name => '長崎県')
Area.create(:name => '熊本県')
Area.create(:name => '大分県')
Area.create(:name => '宮崎県')
Area.create(:name => '鹿児島県')
Area.create(:name => '沖縄県')


JobType.create(:name => '美容')
JobType.create(:name => 'リラクゼーション')
JobType.create(:name => '治療')
JobType.create(:name => 'スポーツ・フィットネス')

JobTypeDetail.create(:name => 'エステ', :job_type_id => 1)
JobTypeDetail.create(:name => 'ネイリスト', :job_type_id => 1)
JobTypeDetail.create(:name => 'アイリスト', :job_type_id => 1)
JobTypeDetail.create(:name => '美容師・理容師', :job_type_id => 1)
JobTypeDetail.create(:name => '美容部員', :job_type_id => 1)
JobTypeDetail.create(:name => 'セラピスト',:job_type_id => 2)
JobTypeDetail.create(:name => 'アロマ', :job_type_id => 2)
JobTypeDetail.create(:name => 'マッサージ', :job_type_id => 2)
JobTypeDetail.create(:name => 'リフレクソロジー', :job_type_id => 2)
JobTypeDetail.create(:name => '整体師', :job_type_id => 2)
JobTypeDetail.create(:name => 'カイロ', :job_type_id => 2)
JobTypeDetail.create(:name => '柔道整復師', :job_type_id => 3)
JobTypeDetail.create(:name => '鍼灸師', :job_type_id => 3)
JobTypeDetail.create(:name => 'あん摩マッサージ指圧師', :job_type_id => 3)
JobTypeDetail.create(:name => 'ヨガ', :job_type_id => 4)
JobTypeDetail.create(:name => 'フィットネス', :job_type_id => 4)


Job.create(:title => '南フランスの美容室☆楽しくて安心です☆', :job_type_detail_id => 4, :detail => 'このお店の夢・想い
お客様満足度はスタッフさんの働きやすさに比例していると思います
当店が1番大切にしているところです
このお店のこだわり/自慢
キャリアプラン
女性は結婚しても 希望の時間働けるようにさせて頂いています
男性は家族ができても幸せになるように提案しています
特に住宅ローンがおりるようにご提案しています
価値観
ラクヘアーはお客様がラクになって頂けるよう
ハンドマッサージサービスやマッサージチェアをご用意。
ゆったりを提供しているのでスタッフさんもゆっくりした気持ちが大事と思っています
お客様をたらい回しするようなサロンではないので
美容ライフが楽しめます', :area_id => 1)