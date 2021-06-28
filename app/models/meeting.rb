class Meeting < ApplicationRecord

  belongs_to :user

  def self.search(search) # self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Meeting.where(['name LIKE ?', "%#{search}%"])
    else
      Meeting.all # 全て表示。
    end
  end
end
