class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end




module BxBlockRequestManagement
  class ClientManagementsController < ApplicationController

    def create
      byebug
      @data = ClientManagment.new(client_name: params[:client_name],
                                      workspace_name: params[:workspace_name],
                                     description: params[:description],
                                     contact_detail: params[:contact_detail],
                                     client_address: params[:client_address],
                                     team_leader: params[:team_leader],
                                     client_official_mail_id: params[:client_official_mail_id],
                                     image: params[:image])
      if @data.save
      render json: ClientRequestSerializer.new(@data).serializable_hash, status: :ok
      else
      render json: {message: "something wrong"}
      end
    end
  end
end

module BxBlockRequestManagement
  class ClientRequestSerializer < BuilderBase::BaseSerializer
    attributes *[
    :id,
    :client_name,
    :workspace_name,
    :description,
    :contact_detail,
    :client_address,
    :team_leader,
    :client_official_mail_id,
    :image

    
    def image
        rails_blob_path(object.image, only_path: true) if object.image.attached?
    end
  end
end


    
  ]

module BxBlockRequestManagement
   class ClientManagment < ApplicationRecord                     

    has_one_attached :image
   end
end


    t.string :client_name
    t.string :workspace_name
    t.string :description
    t.string :contact_detail
    t.string :client_address
    t.string :team_leader
    t.string :client_official_mail_id

