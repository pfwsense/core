{% if helpers.exists('PFWsense.proxy.general.enabled') and PFWsense.proxy.general.enabled|default("0") == "1" %}
squid_setup="/usr/local/pfwsense/scripts/proxy/setup.sh"
squid_enable="YES"
{% else %}
squid_enable="NO"
{% endif %}
