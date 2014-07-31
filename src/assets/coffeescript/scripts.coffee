#=================================================
#            Kaidan - Theme Scripts              =
#=================================================

$ ->
  $(".post-template:not(.page) .post__title").fitText 2.4, minFontSize : "22px", maxFontSize : "46px"

  # Handle image captions and enlargments
  images = 0
  for image in $ ".post-template:not(.page) img"
    images++
    $(image)
    .attr "aria-describedby", "figcaption--#{images}"
    .wrap "<figure></figure>"
    .parent().append "<figcaption id='figcaption--#{images}'>#{image.alt}</figcaption>"

  # Handle links


  # Handle footnotes
  scrollToAnchor = (aid) ->
    aTag = $("a[name='#{aid}'], #{aid}")
    $("html,body").animate scrollTop : aTag.offset().top, 'slow'

  footnotesList = $(".post__footnotes")
  footnoteID = 0
  for tag in $('[href*="#fn"]')
    href = tag.href
    footnoteID++
    hrefWithID = "#{href}--#{footnoteID}"
    $(tag).attr "href", hrefWithID
    footnotesList.append """
      <li class='footnote'>
        <a name="#{hrefWithID}">[#{footnoteID}]</a> -
        #{tag.title}
      </li>
    """

  $('[href*="#fn"], .sidenav a').on "click", () ->
    scrollToAnchor $(this).attr "href"


  $('[href*="#fn"]').tooltipster
    maxWidth : 220
    offsetY : 29
    offsetX : 0
    animation : "grow"
    delay : 0


  # Handle article navigation
  sidebar = $ ".sidebar"

  # Add links to navbar
  headlines = 0
  headlinesTotal = $('.post-template .post h2, .post-template .post h3').length
  for headline in $ '.post-template .post h2, .post-template .post h3'
    $("#sidenav .nav").append "<li><a title='Click to jump to \"#{headline.textContent}\"' href='##{headline.id}'>#{headline.textContent}</a></li>"
    headlines++
    if headlines is headlinesTotal
      $('.sidenav a').on "click", () ->
        scrollToAnchor $(this).attr "href"

  $(".affix").affix()
    offset :
      top : 350
      bottom : () ->
        return (this.bottom = $('.footer').outerHeight(true))



#-----  End of Kaidan - Theme Scripts  -----------