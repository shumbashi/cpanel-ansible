## cPanel Server Setup Playbook

Ansible Playbook for setting up cPanel/CoudLinux Server. Compatible with CentOS 6 and 7. Works with physical servers, KVM, and OpenVZ Containers.

Included Roles:

- **install-cpanel** Installs the latest cPanel version. Requires License but defaults to Trial mode.
- **install-cloudlinux** Converts cPanel server to Cloudlinux. Requires IP or Key license or install will fail.
- **install-cloudlinux-cagesfs** Installs and initiates CageFS
- **install-cloudlinux-alt-packages** Installs all CloudLinux ALT packages including PHP, Ruby, and Python
- **install-configserver-csf** Installs CSF and uploads firewall configuration and allowed IPs. Can handle OpenVZ containers.
- **install-configserver-cmc** 
- **install-configserver-cmm**
- **install-configserver-cmq** 
- **install-configserver-cse**  
- **install-configserver-cxs** Installs ConfigServer eXploit Scanner
- **install-softaculous** Installs Softaculous cPanel Plugin
- **install-cloudflare** Installs CloudFlare cPanel Plugin
- **install-letsencrypt** Installs Let's Encrypt cPanel Plugin
- **install-spamexperts** Installs SpamExperts cPanel Plugin
- **install-imunify** Installs Imunify360. Requires Key License
- **install-sitepad** Installs and configures SitePad Website Builder

## Variables & Settings:

### General Variables

- `control_panel: 'cPanel'` (default: cPanel) Sanity Check, only effective when using Tower/AWX Workflows.
- `is_openvz: false`(default: false), Change to true if the target server is OpenVZ Container

### CloudLinux Variables

- `cloudlinux_key: ` (default: *Blank*) Change to use CloudLinux key based license.


### Imunify360 Variables

- `imunify_key: ` (default: *Blank*) Change to use Imunify360 key based license.


### Plugin Variables

Changing any of he below settings to `true` will ensure correspoding packages are installed.

- `install_csf: true` (default: true)
- `install_cmc: true` (default: true)
- `install_cmm: true` (default: true)
- `install_cmq: true` (default: true)
- `install_cse: true` (default: true)
- `install_cxs: false` (default: false)
- `install_softaculous: false` (default: false)
- `install_cloudflare: false` (default: false)
- `install_cloudlinux: false` (default: false)
- `install_kernelcare: true` (default: true)
- `install_cloudlinux_cagefs: false` (default: false)
- `install_cloudlinux_alt: false` (default: false)
- `install_letsencrypt: false` (default: false)
- `install_spamexperts: false` (default: false)
- `install_imunify: false` (default: false)
- `install_sitepad: false` (default: false)

### cPanel Settings 

- `cron_email_address: admin@yourdomain.ly` (default: *admin@yourdomain.ly*)
- `cpanel_email_address: admin@yourdomain.ly` (default: *admin@yourdomain.ly*)
- `alerts_email_address: admin@yourdomain.ly` (default: *admin@yourdomain.ly*)
- `cpanel_contact_pager: admin@yourdomain.ly` (default: *admin@yourdomain.ly*)
- `nameserver_primary: ns1.yourdomain.com`
- `nameserver_secondary: ns2.yourdomain.com`


### Cloudflare Settings

- `cloudflare_company: ` (default: *Blank*) Required to install CloudFlare Plugin
- `cloudflare_mode: extended` (default: *extended*)
- `cloudflare_key: ` (default: *Blank*) Required to install CloudFlare Plugin

## License
This ansible playbook is licensed under the MIT license; you can find a full copy of the license itself in the file /LICENSE

This playbook is largely based on [Lithium Hosting - Ansible cPanel Boostrap](https://github.com/LithiumHosting/ansible-cpanel-bootstrap)