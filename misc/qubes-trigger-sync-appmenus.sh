#!/bin/sh

UPDATEABLE=`qubesdb-read /qubes-vm-updateable`

if [ "$UPDATEABLE" = "True" ]; then
    /usr/lib/qubes/qrexec-client-vm dom0 qubes.SyncAppMenus /bin/sh /etc/qubes-rpc/qubes.GetAppmenus
fi
