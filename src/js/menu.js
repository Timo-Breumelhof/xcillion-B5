/**
 * Navigation / dropdown behaviour
 *
 * Submenus use Bootstrap's collapse component (toggled by id via
 * data-bs-target) rather than its dropdown component, because dropdown
 * requires the toggle and menu to be DOM siblings, which conflicts with the
 * flex row wrapping the link and toggle icon. Collapse doesn't auto-close
 * sibling menus or close on an outside click the way dropdown did, so that
 * behavior is replicated here.
 */
document.addEventListener('DOMContentLoaded', function () {
    var nav = document.getElementById('nav-main');

    if (!nav || typeof bootstrap === 'undefined') {
        return;
    }

    function closeSubmenu(submenu) {
        bootstrap.Collapse.getOrCreateInstance(submenu).hide();
    }

    nav.addEventListener('show.bs.collapse', function (event) {
        var item = event.target.closest('.nav-item-li');

        if (!item || !item.parentElement) {
            return;
        }

        Array.prototype.forEach.call(item.parentElement.children, function (sibling) {
            if (sibling === item) {
                return;
            }

            var openSubmenu = sibling.querySelector(':scope > ul.dropdown-menu.show');
            if (openSubmenu) {
                closeSubmenu(openSubmenu);
            }
        });
    });

    nav.addEventListener('hidden.bs.collapse', function (event) {
        event.target.querySelectorAll('ul.dropdown-menu.show').forEach(closeSubmenu);
    });

    document.addEventListener('click', function (event) {
        if (nav.contains(event.target)) {
            return;
        }

        nav.querySelectorAll('ul.dropdown-menu.show').forEach(closeSubmenu);
    });
});
