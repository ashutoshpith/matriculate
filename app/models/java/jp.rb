class Java::Jp < ApplicationRecord
  has_one :jprogresss, class_name: "jprogress", foreign_key: "reference_id"
end
