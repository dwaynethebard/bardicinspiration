module ItemsHelper
    def item_price(item)
        if item.promo_id == nil
            number_to_currency(item.unit_value).html_safe
        else
           render partial: 'items/discount' , :locals => {:item=>item}
        end
    end
end
