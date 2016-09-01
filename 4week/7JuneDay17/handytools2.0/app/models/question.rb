class Question < ActiveRecord::Base

  validates(:title, {presence: {message: "must be present!"}, uniqueness: true })
  #by having the option: uniqueness: {scope: :title} it ensures that the hbody must be unique in combination with the title
  validates :body, presence: true,
                   length: {minimum: 7},
                   uniqueness: {scope: :title}

  validates :view_count, numericality: {greater_than_or_equal_to: 0}

  validate :no_title_in_body
  # VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  # validates :email, format: VALID_EMAIL_REGEX

  validate :no_monkey

  after_initialize :set_defaults

  before_save      :cap_title, :squeeze

  scope :recent, lambda {|x| where("created_at > ?", 3.day.ago).limit(count) }

  scope :search, lambda {|word| where("title ILIKE ? OR body ILIKE ?", "%#{word}%", "%#{word}%")}

  def self.search(keyword)
      where("title ILIKE :word OR body ILIKE :word", {word: "%#{keyword}%"})
  end

  def self.recent(count)
    where("created_at > ?", 3.day.ago).limit(count)
  end

  scope :created_after -> {|date| where "created_at > ?", date}

  private

  def squeeze
    self.title = title.squeeze(" ")
    self.body = body.squeeze(" ")
  end

  def cap_title
    self.title = title.capitalize
  end


  def set_defaults
    puts title
    self.view_count ||= 0
  end

  def no_title_in_body
    if body.include?(title)
      errors.add(:body, "No title in body!")
    end
  end

  def no_monkey
    if title && title.downcase.include?("monkey")
      errors.add(:title, "No monkey please!")
    end
  end

end
