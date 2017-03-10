if defined?(Pry)
  # 改行を挟んだメソッドチェインを貼り付けた際にshellが実行されてしまうのを回避
  # ※"."でshellが実行できなくなる弊害あり
  # Pry.commands.delete '.<shell command>'
  Pry.commands.delete /\.(.*)/
end
