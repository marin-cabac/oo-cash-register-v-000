
class CashRegister
attr_accessor  :total, :qty, :items


 #########################################
def initialize(dsnt=0)
  @total = 0
  @dsnt=dsnt #discount
  @trn=0     #transaction
  @items =[]
  @qty=qty
end

#########################################
def   add_item(n,val,qty=1)
  #@trn=(val*qty)
  self.total +=(val*qty)
     qty.times {@items << n}
end
#########################################
def discount()  @dsnt end
#########################################
def apply_discount
  v=@dsnt

  d=(@total-=@total/100*v)
  v == 0 ? ("There is no discount to apply.") : ("After the discount, the total comes to $#{d}.")
end
#########################################
def  void_last_transaction() @total -= @trn  end
#########################################
end
