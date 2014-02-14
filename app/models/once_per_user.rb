require "pry"
class OncePerUser < Spree::Promotion::Rules::User
  def eligible?(order, options = {})
    user = order.user
    action_ids = promotion.actions.select(:id).collect(&:id)
    promotion_count = Spree::Adjustment.promotion.where(adjustable_id: Spree::Order.select(:id).where(user_id: user.id).collect(&:id)).where(source_id: action_ids).count

    binding.pry

    users.include?(user) && promotion_count == 0 && promotion.code.downcase == order.coupon_code.downcase
  end
end
