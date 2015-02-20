class StatusUpdatesController < ApplicationController
  before_action :set_status_update, only: [:show, :edit, :update, :destroy]

  def index
    @status_updates = StatusUpdate.all
  end

  def new
    @status_update = StatusUpdate.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
