titles =　%w(Taro Jiro Hana John Mike Sophy Bill Alex Mary Tom)
details = ["佐藤", "鈴木", "高橋", "田中"]
areas = ["福島県", "福井県", "福岡県"]

0.upto(9) do |idx|
  job = Job.create(
  { title: titles[idx],
    detail: "detail",
    area: "area"
  }, without_protection: true)

  fname = Rails.root.join("db/seeds/development", "job#{idx%3+1}.jpg")
  JobImage.create(
  { job: job,
    data: File.open(fname, "rb").read,
    content_type: "image/jpeg"
  }, without_protection: true)
end
