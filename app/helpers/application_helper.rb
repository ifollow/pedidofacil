module ApplicationHelper

  def flash_message
    messages = ""
    [:notice, :info, :warning, :error].each {|type|
      if flash[type]
        messages += "#{flash[type]}"
      end
    }

    messages
  end
  
  def number_to_currency_br(number)
  number_to_currency(number, :unit => "R$ ", :separator => ",", :delimiter => ".")
  end

end
