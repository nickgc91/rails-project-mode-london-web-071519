class DocumentsController < ApplicationController

    def index 
        @documents = Document.all
    end 

    def new
        @doc = Document.new
    end 

    def show
        @document = Document.find(params[:id])
    end 

    def create
        @doc = Document.create(doc_params)
        redirect_to documents_path
    end 

    def update
    end 

    def destroy
    end 

    private 

    def doc_params 
        params.require(:document).permit(:title, :text, :creation_date, :author, :historical_moment_id)
    end 

end
