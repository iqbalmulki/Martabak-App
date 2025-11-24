/**
 * Sidebar Menu Handler
 * Handles the toggle functionality for collapsible menu items
 */
$(document).ready(function() {
    // Toggle dropdown menu for has-arrow links
    $('a.has-arrow').on('click', function(e) {
        e.preventDefault();
        
        var $this = $(this);
        var $parent = $this.closest('li');
        var $submenu = $parent.find('> ul');
        
        if($submenu.length) {
            // Close other open menus at the same level
            $this.closest('ul').find('> li > ul.collapse.in').slideUp(300, function() {
                $(this).removeClass('in');
            });
            
            // Toggle current submenu
            $submenu.stop(true, true).slideToggle(300, function() {
                $(this).toggleClass('in');
            });
            
            // Update aria-expanded attribute
            $this.attr('aria-expanded', $this.attr('aria-expanded') === 'false' ? 'true' : 'false');
            
            // Toggle active class on parent li
            $parent.toggleClass('active');
        }
    });
    
    // Ensure proper initialization with metisMenu
    try {
        $("#sidebarnav").metisMenu();
    } catch(err) {
        console.log('MetisMenu initialization skipped');
    }
});
