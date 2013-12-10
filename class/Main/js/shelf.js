$.asm = {};
$.asm.panels = 1;
$div = {
  shelfcontainer   : $('#shelfcontainer'),
  sidebar          : $('#sidebar'),
  togglesidebar    : $('#toggleSidebar'),
  togglesidebar_i  : $('#toggleSidebar i'),  
  acchead          : $('.accordion-heading'),
  acchead_i        : $('.accordion-heading i'),
  accbody          : $('.accordion-body'),
  col              : $('.column'),
  content          : $('#content'),
  body             : $('#body')
};

$anchor = {
  accordian : $('a.accordion-toggle-small'),
  shelflink : $('#shelflink a') 
}

$table = {
  shelf : $('#tblshelf')
}



$(function() {

  $(document).ready(function () {
    setDIVHeight();
  })

  $(window).resize(function () {
    setDIVHeight();
  });
  // adjust table height base on table height
  function setDIVHeight() {

    var ilHeight = ($table.shelf.height() + $(window).height()) * 0.65 ;
    $div.body.height(ilHeight);
  }

/*
    function setDIVHeight() {

    var divTop = $bodyDiv.offset().top;
    var winHeight = $(window).height();
    var divHeight = winHeight - divTop - 25;
    var ilHeight = (divHeight * 0.65) + 'px';
    $itemListContainer.height(ilHeight);
    }*/
  function sidebar(panels) {
      $.asm.panels = panels;
      if (panels === 1) {
        $div.shelfcontainer.removeClass('content-withleftsidebar');
        $div.shelfcontainer.addClass('fullcontent');
        $div.sidebar.animate({
              left: -180,
        });
      } else if (panels === 2) {
        $div.shelfcontainer.removeClass('fullcontent');
        $div.shelfcontainer.addClass('content-withleftsidebar');
          $div.sidebar.animate({
              left: 200,
          });
      }
  };

  $div.togglesidebar.click(function() {
    if ($.asm.panels === 1) {
      $div.togglesidebar_i.addClass('icon-chevron-left');
      $div.togglesidebar_i.removeClass('icon-chevron-right');
      return sidebar(2);
    } else {
      $div.togglesidebar_i.removeClass('icon-chevron-left');
      $div.togglesidebar_i.addClass('icon-chevron-right');
      return sidebar(1);
    }
  });
  // default with sidebar
  sidebar(2);
  $anchor.accordian.click(function(e) {
    $this = $(this);
    e.preventDefault();
    if(!$(this).parent().hasClass('active')) {
        $div.acchead.removeClass('active');
        $div.acchead.removeClass('active');
        $div.acchead_i.removeClass("icon-chevron-up");
        $div.acchead_i.addClass("icon-chevron-down");
        $this.children().removeClass("icon-chevron-down");
        $this.children().addClass("icon-chevron-up");
        $this.parent().addClass('active').next().addClass('active');
    } else {
        $div.acchead.removeClass('active');
        $div.acchead.removeClass('active');
        $this.children().removeClass("icon-chevron-up");
        $this.children().addClass("icon-chevron-down");
    }
  });

  $div.col.click(function(){
    $('#iframewithdbo').remove();
    $newiframe = $('<iframe id="iframewithdbo" src="../../shelfinclude.php?shelfid='+$(this).text()+'" style="zoom:0.60" width="99.6%" height="600px" frameborder="0"></iframe>');
    $modaldiv = $('#myModal .modal-body');
    $modaldiv.append($newiframe);
    $('#myModal').modal('show');
  });
 
});