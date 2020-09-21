class BloggersController < ApplicationController
    before_action :find_blogger, only: [:show]

    def show
    end

    def create
        blogger = Blogger.create(blogger_params)
        redirect_to blogger_path(blogger)
    end

    def new
        @blogger = Blogger.new
    end


    private

    def find_blogger
        @blogger = Blogger.find(params[:id])
    end


    def blogger_params
        params.require(:blogger).permit!
    end

end