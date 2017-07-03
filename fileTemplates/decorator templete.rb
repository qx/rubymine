#/**
# * Created by ${USER} on ${DATE}.
# */
class ${Model_name}Decorator
  attr_reader :${model_name}
  attr_accessor :image

  def initialize(${model_name})
    @${model_name} = ${model_name}
    @image = "http://img3.cache.netease.com/photo/0003/2016-11-15/C5U2H67H00AJ0003.jpg"
  end

  def is_front_page?
    ${model_name}.published_on > 2.days.ago #两天以内的,不是大于两天的
  end

  def method_missing(method_name, *args, &block)
    ${model_name}.send(method_name, *args, &block)
  end

  def publication_date
    ${model_name}.created_at.strftime '%Y-%m-%d'
  end

  def classes
    classes = ['page', 'btn']
    classes << 'cover' if ${model_name}.is_front_page?
    classes
  end

  #用以检测动态方法存在性,测试访问author试试
  def respond_to_missing?(method_name, include_private = false)
    ${model_name}.respond_to?(method_name, include_private) || super
  end
end