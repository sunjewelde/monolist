class RankingController < ApplicationController
    
    def have
        ids = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
        @ranking = Item.find(ids).sort_by {|i| ids.index(i.id)}
    end
    
    def want
        ids = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
        @ranking = Item.find(ids).sort_by {|i| ids.index(i.id)}
    end
    
end
