module ApplicationHelper

  def default_meta_tags(image = "ogp.png")
    {
      # site: "うほ検定",
      # title: "うほ検定",
      reverse: true,
      charset: "utf-8",
      description: "あなたの「ゴリラ的資質」を測定するサービス",
      canonical: request.original_url,
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: "website",
        url: request.original_url,
        image: image_url(image),
        locale: "ja-JP"
      },
        twitter: {
        card: "summary_large_image",
        image: image_url(image)
      }
    }
  end
end