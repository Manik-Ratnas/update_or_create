
module UpdateOrCreate

  extend ActiveSupport::Concern

  # add your static(class) methods here
  module ClassMethods
    def method_missing_with_update_or_create(method_id, *args, &block)
      method_name = method_id.to_s
      if method_name =~ /^update_or_create_by_(.+)$/
        update_or_create($1, *args, &block)
      else
        method_missing_without_update_or_create(method_id, *args, &block)
      end
    end

    alias_method_chain :method_missing, :update_or_create

    def update_or_create(search, *args, &block)
      parameters = search.split("_and_")
      params = Hash[ parameters.zip(args) ]
      obj = where(params).first || self.new(params)
      yield obj
      obj.save
      obj
    end
  end
end


ActiveRecord::Base.send(:include, UpdateOrCreate)

