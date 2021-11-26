class PostComment < ApplicationRecord

  belongs_to :farmer_user, optional: true
# Rails 5.1から関連付けが存在しない場合、belongs_toはデフォルトで検証エラーをトリガーします。
  belongs_to :general_user, optional: true
  belongs_to :post

end
