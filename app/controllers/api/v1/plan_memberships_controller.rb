class Api::V1::PlanMembershipsController < ApplicationController

  def create
    user = User.find(params[:user_id])

    if !user.subscribed
      plan_membership = PlanMembership.create!(
      member_id: user.id,
      plan_id: params[:plan_id]
    )

    user.update!(
      subscribed: true,
      plan_membership_id: plan_membership.id
    )
    plan = plan_membership.plan

    render json: { plan_membership: plan_membership, plan: plan }

    else
      plan_membership = user.plan_membership
      plan = plan_membership.plan
      render json: { message: "You currently have a subscription.  Would you like to change your plan?", status: 204, plan_membership: plan_membership, plan: plan }
    end
  end

  def show
    user = User.find(params[:user_id])
    if user.plan_membership
      plan = Plan.find_by(id: user.plan_membership.plan_id)
      
      render json: { status: 200, plan_membership: user.plan_membership, plan: plan }
    else
      render json: { status: 404, message: 'You are currently not enrolled' }
    end
  end

  def destroy
    user = User.find(params[:user_id])

    plan_membership = user.plan_membership
    if plan_membership
      plan_membership.destroy!
      user.update!(subscribed: false, plan_membership_id: nil)
      render json: { message: 'Please choose new plan.' }
    else
      render json: { message: 'Membership not found.' }
    end
  end

  private

  def plan_membership_params
    params.require(:plan_membership).permit(:member_id, :plan_id)
  end

end