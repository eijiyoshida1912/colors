class ApplicationController < ActionController::Base
  QUESTIONS = ["死", "平和", "熱情", "戯れ", "嫉妬", "自然", "信任", "欺き", "男", "退屈", "夜", "裸体", "情緒", "笑い", "嫌悪", "自然さ", "協力", "毒", "男性", "落胆", "殺人", "赤ん坊", "気質", "お祭り", "快楽", "調和", "不幸", "過去", "心配", "霊魂", "活動", "権力欲", "若い人", "献身", "盗み", "父", "老人", "悲惨", "単純さ", "反抗", "朝", "願望", "友達（男）", "涙", "仕事", "理論", "詐欺", "児童", "力", "勝利", "冗談", "善", "責任", "悲しみ", "依存", "うそ", "心", "性欲", "喜び", "苦痛", "利益", "自分個人の", "病気", "職業", "敬虔", "緊張", "独創", "慈善", "女子", "兄弟", "宗教", "自発性", "人を助けたい気持ち", "拘束", "孤独", "母", "機械仕掛け", "恥", "満足", "看護婦", "娘", "科学", "家庭", "怨恨", "機械", "女友達", "良心", "息子", "成功", "敗北", "親切", "憐み", "労働", "従順", "若者", "未来", "有用", "夕暮", "苦難", "野望", "結婚", "都会", "優雅"]

  COLORS = {"black" => "黒",
            "white" => "白",
            "red" => "赤",
            "orange" => "オレンジ",
            "yellow" => "黄",
            "green" => "緑",
            "blue" => "青",
            "purple" => "紫",
            "brown" => "茶",
            "gray" => "灰色",
            "pink" => "ピンク"
           }

  private def current_member
    Member.find_by(id: session[:member_id]) if session[:member_id]
  end
  helper_method :current_member

  class LoginRequired < StandardError; end
  class Forbidden < StandardError; end

  private def login_required
    raise LoginRequired unless current_member
  end
end
