module ApplicationHelper
  def flash_class(level)
    case level
    when "success" then "ui success message"
    when "danger" then "ui error message"
    end
  end

  #meta_tags
  def default_meta_tags
    {
      site: 'ノウキンチェッカー',
      # title: 'ホーム',
      reverse: true,
      # separator: '＊',
      description: '脳筋度を測定できるサービス',
      keywords: 'ノウキンチェッカー,脳筋チェッカー,脳筋,筋トレ,マッチョ',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('kinniku4.jpg') },
        { href: image_url('kinniku4.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'ノウキンチェッカー',
        title: 'ホーム',
        description: '脳筋度を測定できるサービス',
        type: 'website',
        url: request.original_url,
        image: image_url('kinniku4.jpg'),
        locale: 'ja_JP',
      }
      # twitter: {
      #   card: 'summary_large_image',
      #   site: '@ツイッターのアカウント名',
      # },
      # fb: {
      #   app_id: '¥facebookのID'
      # }
    }
  end
end