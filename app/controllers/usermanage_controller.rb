#encoding : utf-8
class UsermanageController < ApplicationController
	@@bc_ic = "จัดการ"
	@@bc_ic_link = "#"
  def listuser
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'จัดการผู้ใช้'
	@breadcrumb_link[1]  = ""
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @users = User.all
  end

  def adduser
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'จัดการผู้ใช้'
	@breadcrumb_link[1]  = "/usermanage/listuser"
	@breadcrumb_title[2] = 'เพิ่มผู้ใช้งาน'
	@breadcrumb_link[2]  = ""
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @user = User.new
  end

  def createuser
	if session[:user].nil?
		redirect_to('/login/login')
	end
    User.create(params[:user])
    redirect_to('/usermanage/listuser', :notice => 'บันทีกค่าเรียบร้อยแล้ว')
  end


  def edituser
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @user = User.find(params[:id].to_i)
  end

  def updateuser
	if session[:user].nil?
		redirect_to('/login/login')
	end
    record = User.find(params[:user][:id])
    record.update_attributes(params[:user])
    redirect_to('/usermanage/listuser', :notice => 'แก้ไขค่าเรียบร้อยแล้ว')
  end

  def deleteuser
	if session[:user].nil?
		redirect_to('/login/login')
	end
    User.delete(params[:id].to_i)
    redirect_to('/usermanage/listuser', :notice => 'ลบผู้ใช้เรียบร้อยแล้ว')
  end
end
