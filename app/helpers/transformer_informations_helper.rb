module TransformerInformationsHelper
  def score_color(score)
    case score
    when 1
      return "<span style=\"padding:0px 40px 0px 40px; background:rgb(146,208,80);\"></span>".html_safe
    when 2
      return "<span style=\"padding:0px 40px 0px 40px; background:rgb(0,102,255);\"></span>".html_safe
    when 3
      return "<span style=\"padding:0px 40px 0px 40px; background:rgb(255,255,0);\"></span>".html_safe
    when 4
      return "<span style=\"padding:0px 40px 0px 40px; background:rgb(252,152,0);\"></span>".html_safe
    when 5
      return "<span style=\"padding:0px 40px 0px 40px; background:rgb(255,0,0);\"></span>".html_safe
    when 6
      return "<span style=\"padding:0px 40px 0px 40px; background:rgb(255,0,0);\"></span>".html_safe
    else 
      return "<span>-</span>".html_safe
    end
  end
  
  def importance(importance)
    imp_importance = ImportanceIndex.where("importance = '#{importance}'").first
    if imp_importance.nil?
       "<span>-</span>".html_safe
    else
      "<span style=\"padding:0px 40px 0px 40px; background:##{imp_importance[:color]}\">#{importance}</span>".html_safe
    end   
  end
end
