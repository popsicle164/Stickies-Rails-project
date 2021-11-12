class LeftpadController < ApplicationController
    def home
        @stickies = Sticky.all
    end
    def create
        @sticky = Sticky.new
        @sticky.body = params["body"]
        @sticky.color = params["color"]
        @sticky.save
        redirect_to :root
    end
    def edit
        @sticky = Sticky.find(params[:id])
        @sticky.body = params["body"]
        @sticky.color = params["color"]
        @sticky.save
        redirect_to :root
    end
    def delete
        @sticky = Sticky.find(params[:id])
        @sticky.destroy
        redirect_to :root
    end
    private
    def sticky_params
        params.require(:sticky).permit(:id,:body,:color)
    end
end