# DO NOT EDIT THIS FILE -- PFWsense auto-generated file
{% if helpers.exists('PFWsense.monit.general.enabled') and PFWsense.monit.general.enabled|default("0") == "1" %}
monit_setup="/usr/local/pfwsense/scripts/PFWsense/Monit/setup.sh"
monit_enable="YES"
{% else %}
monit_enable="NO"
{% endif %}