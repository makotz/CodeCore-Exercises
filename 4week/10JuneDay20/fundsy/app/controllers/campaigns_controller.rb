class CampaignsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :find_campaign, only: [:show, :edit, :update, :destroy]

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new campaign_params
    if @campaign.save
      SendCampaignFinishReminderJob.set({wait_until: @campaign.end_date - 5.day}).perform_later(@campaign)
      redirect_to campaign_path(@campaign), notice: "Campaign created"
    else
      flash[:alert] = "Campaign not saved"
      render :new
    end
  end

  def show
    @campaign = Campaign.find params[:id]
  end

  def index
    @campaigns = Campaign.order(:created_at)
  end

  def edit
  end

  def update
    campaign_params
    if @campaign.update campaign_params
      redirect_to campaign_path(@campaign), notice: "update successful"
    else
      render :edit
    end
  end

  def destroy
    campaign.destroy
    redirect_to campaigns_path
  end

  private

  def campaign_params
    campaign_params = params.require(:campaign).permit(:title, :body, :goal, :end_date, :address)
  end

  def find_campaign
    campaign = Campaign.find params[:id]
  end

end
