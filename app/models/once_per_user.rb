class OncePerUser < Spree::Promotion::Rules::User
  def eligible?(order, options = {})
    user = order.user
    # originator is the PromotionAction
    action_ids = promotion.actions.select(:id).collect(&:id)
    promotion_count = Spree::Adjustment.promotion.eligible.where(source_id: Spree::Order.select(:id).where(user_id: user.id).collect(&:id)).where(originator_id: action_ids).count
    users.include?(user) && promotion_count == 0
  end
end