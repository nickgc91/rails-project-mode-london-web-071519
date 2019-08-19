class DocumentsController < ApplicationController

    def index 
        @documents = Document.all
    end 

    def new
        @document = Document.new
    end 

    def show
        @document = Document.find(params[:id])
    end 

    def create
        @doc = Document.create(doc_params)
        redirect_to document_path(@doc)
    end 

    def edit
        @document = Document.find(params[:id])
    end 

    def update
        @document = Document.find(params[:id])
        @document.update(doc_params)
        redirect_to document_path(@document)
    end 

    def destroy
        @document = Document.find(params[:id]).destroy 
        redirect_to documents_path
    end 

    private 

    def doc_params 
        params.require(:document).permit(:title, :text, :creation_date, :author, :historical_moment_id)
    end 

end
