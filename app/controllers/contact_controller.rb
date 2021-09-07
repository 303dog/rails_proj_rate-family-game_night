class ContactController < ApplicationController

    def create
        @contact = Contact.new()
        @contact.name = params.new[:name]
        @contact.email = params[:email]
        @contact.message = params[:message]
        @contact.upLoadedFile = params[:upLoadedFile]
        if @contact.deliver
            render json: {message: "Email was sent successfully"}
        else 
            render json: @contact.errors 
        end
    end
end