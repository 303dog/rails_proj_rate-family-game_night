class Contact < MailForm:Base 
    attribute :name, validate: true
    attribute :email, validate: true
    attribute :message
    attribute :upLoadedFile

    def headers 
        {
            #email subject message
            subject: "Connect",
            to: '303dog@gmail.com',
            from: %("#{name}" <#{email}>)
            #the from will display the name entered by
            #the user and followed by the email
        }
    end
end