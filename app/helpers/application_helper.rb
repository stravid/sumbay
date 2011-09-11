module ApplicationHelper
  def parse_amount(amount)
    if amount.start_with?(",", ".")
      amount = "0" << amount
    end

    if amount.scan(/,+/).length > 1 || /\d+,\d{3}\.\d{0,2}/.match(amount)
      amount.gsub!(",", "")
    end

    if amount.scan(/\.+/).length > 1 || /\d+\.\d{3}\,\d{0,2}/.match(amount)
      amount.gsub!(".", "")
    end

    amount.gsub(",", ".")
  end
end
