#encoding : utf-8
class UsermanageController < ApplicationController
  def listuser
    @users = User.all
  end

  def adduser
    @user = User.new
  end

  def createuser
    User.create(params[:user])
    redirect_to('/usermanage/listuser', :notice => 'บันทีกค่าเรียบร้อยแล้ว')
  end

  def deleteuser
  end

  def edituser
    @user = User.find(params[:id].to_i)
  end

  def updateuser
    record = User.find(params[:user][:id])
    record.update_attributes(params[:user])
    redirect_to('/usermanage/listuser', :notice => 'แก้ไขค่าเรียบร้อยแล้ว')
  end

  def deleteuser
    User.delete(params[:id].to_i)
    redirect_to('/usermanage/listuser', :notice => 'ลบผู้ใช้เรียบร้อยแล้ว')
  end
end
