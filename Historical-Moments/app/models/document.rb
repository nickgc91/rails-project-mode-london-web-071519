class Document < ApplicationRecord
    belongs_to :historical_moment


    #provides the total amount of documents
    def self.total_documents
        Document.all.count
    end

    
end
