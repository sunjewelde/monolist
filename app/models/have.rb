class Have < Ownership
  belongs_to :item, class_name: "Item"
  belongs_to :user, class_name: "User"
  belongs_to :ownweship, class_name: "Ownweship"
end
