class Plan < ApplicationRecord
    validates :title, presence:true
    validates :startday, presence:true
    validates :finishday, presence:true
    validate :date_before_finish

    def date_before_finish
        errors.add(:finishday, "は今日以降の日付で選択してください") if finishday.nil? || finishday < Date.today
    end
end
