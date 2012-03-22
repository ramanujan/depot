class Cart < ActiveRecord::Base

  has_many :line_items, :dependent=>:destroy

end


# Con l'opzione :dependent=>:destroy andiamo a creare un'associazione di tipo parent
# child tra Cart e LineItem. In pratica quando un oggetto Cart viene eliminato
# dal database con il metodo destroy() allora viene visitata l'associazione one->to->many 
# con LineItem e quindi viene eliminato ogni record di tipo LineItem associato. 

