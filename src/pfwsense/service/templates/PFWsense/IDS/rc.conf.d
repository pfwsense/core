{# Macro import #}
{% from 'PFWsense/Macros/interface.macro' import physical_interface %}
{% if not helpers.empty('PFWsense.IDS.general.enabled') %}
suricata_setup="/usr/local/pfwsense/scripts/suricata/setup.sh"
suricata_enable="YES"
{% if not helpers.empty('PFWsense.IDS.general.verbosity') %}
suricata_flags="-D -{{PFWsense.IDS.general.verbosity}}"
{% endif %}
{% if PFWsense.IDS.general.ips|default("0") == "1" %}
# IPS mode, switch to netmap
suricata_netmap="YES"
{% else %}
# IDS mode, pcap live mode
{% set addFlags=[] %}
{%   for intfName in PFWsense.IDS.general.interfaces.split(',') %}
{#     store additional interfaces to addFlags #}
{%     do addFlags.append(physical_interface(intfName)) %}
{%   endfor %}
suricata_interface="{{ addFlags|join(' ') }}"
{% endif %}
{% else %}
suricata_enable="NO"
{% endif %}
