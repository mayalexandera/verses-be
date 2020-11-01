class Api::V1::PlansController < ApplicationController
  def index 
    plans = Plan.all
    render json: plans.sort_by{ |t| t.price }
  end

  def show 
    plan = Plan.find(params[:plan_id])
    render json: plan
  end
end
