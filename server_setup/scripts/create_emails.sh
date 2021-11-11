#!/bin/bash
# Create a file per user (named by email address) with email body as below
# Skips users that do not exist in passwd file.
# Skips users where email already exists in target dir.
#
# FYI, does *not* actually send emails.
# You can send emails by navigating to the email dir and using this command:
# ls | xargs -t -I {} sh -c "mutt -s 'RNA-Seq Demystified workshop: credentials and setup' {} < {}"
#
# 11/11/2021 cgates


set -ue

date
export USER_PASSWD_FILE=$1
export OUTPUT_DIR=$2
export CHECKLIST_LINK=$3 # 'https://umich-brcf-bioinf.github.io/2021-11-15-umich-rnaseq-demystified/workshop_setup/preworkshop_checklist.html'
export INTRO_TEXT=$4 # 'The RNA-Seq Demystified workshop will begin 11/15 at 9:00am ET. We will mail you a Zoom link later this week.' 

users=()
missing_users=()
email_file_exists=()
declare -A user_passwd
declare -A user_email
declare -A user_name
while IFS==$'\t' read -r -a line; do
    [[ "${line[0]}" =~ ^#.*$ ]] && continue
    user=${line[0]}
    passwd=${line[1]}
    email=${line[2]}
    first_name=${line[3]}

    if ! grep -q "^${user}:" /etc/passwd; then
        missing_users+=($user)
        continue 
    fi

    if [ -f "${OUTPUT_DIR}/${email}" ]; then
        email_file_exists+=($user)
        continue
    fi

    users+=($user)

    user_passwd[$user]=$passwd
    user_email[$user]=$email
    user_name[$user]=$first_name
done < "$USER_PASSWD_FILE"

if (( ${#missing_users[@]} )); then
    echo missing users: ${existing_users[@]}
fi

if (( ${#email_file_exists[@]} )); then
    echo skipped users where email already exists: ${email_file_exists[@]}
fi
echo Ready to create files for ${#users[@]} users: ${users[@]}
read -p "Press any key to continue..."

added_users=()
for user in ${users[@]}; do
    export passwd=${user_passwd[$user]}
# FYI, the email below can be sent as text payload; modern browsers will heat up the link and mailto.
cat << EOF > $OUTPUT_DIR/${user_email[$user]}
Hello ${user_name[$user]},

${INTRO_TEXT}
To complete your pre-workshop prep, workstation setup, and test your login (below), please see:
${CHECKLIST_LINK}

Your individual credentials to connect to the shared server used in the upcoming workshop session:
username: $user
password: $passwd

For other questions, please email us at:
bioinformatics-workshops@umich.edu

---
EOF
    added_users+=($user)
done

if (( ${#missing_users[@]} )); then
    echo skipped missing users: ${missing_users[@]}
fi

if (( ${#email_file_exists[@]} )); then
    echo skipped users where email already exists: ${email_file_exists[@]}
fi

if (( ${#added_users[@]} )); then
    echo created files in ${OUTPUT_DIR} for ${#added_users[@]} of ${#users[@]} users: ${added_users[@]}
    cat << EOF
You can send these emails from AWS by executing these commands:
cd $(readlink -e $OUTPUT_DIR)
ls | xargs -t -I {} sh -c "mutt -s 'RNA-Seq Demystified workshop: credentials and setup' {} < {}
EOF
else
    echo WARNING: no emails were created.
fi
    
date
echo done
