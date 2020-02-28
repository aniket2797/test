#!/bin/bash

DATE=$(date)

# check default page of new hosting
if diff /SCRIPTS/UPDATEME/default_html.html /usr/local/CyberCP/index.html > /dev/null ; then
{
echo "Same File"
}
else
{
cp /SCRIPTS/UPDATEME/default_html.html /usr/local/CyberCP/index.html
echo "Default File updated"
}
fi


# check default page of login page
if diff /SCRIPTS/UPDATEME/login.html /usr/local/CyberCP/loginSystem/templates/loginSystem/login.html > /dev/null ; then
{
echo "Same File"
}
else
{
cp /SCRIPTS/UPDATEME/login.html /usr/local/CyberCP/loginSystem/templates/loginSystem/login.html
echo "Login File updated"
}
fi

echo "Last Check done at $DATE" >> /SCRIPTS/UPDATEME/log/page_update.log
