
[1] git clone https://github.com/paulscherrerinstitute/ecmaster
[2] git clone https://github.com/paulscherrerinstitute/ecat2
[3] git clone https://bitbucket.org/europeanspallationsource/m-epics-ecat2
[4] hg clone http://hg.code.sf.net/p/etherlabmaster/code ethercat-hg


git clone https://github.com/jeonghanlee/ecat_setup
git clone https://github.com/icshwi/e3-ecat2

Issue 1,


require ecat

returns

Loading /epics/modules/ecat2/0.0.1/R3.15.4/lib/linux-x86_64/libecat2.so library failed: /epics/modules/ecat2/0.0.1/R3.15.4/lib/linux-x86_64/libecat2.so: undefined symbol: ecrt_domain_received


unfornately, this function doesn't exist in [4], so if we build the ecat2 with the shared library with [4], we ended up the situation.

So, current EEE has no issue on this, is that means.. the current ESS ethercat master isn't the open source ethercat master....

It is the PSI ethercat master instead....

iocuser@icslab-ecat02: ethercatlib$ grep -r ecrt_domain_received *
1.5.2-ESS0/3.14.12.5/include/ecrt.h:int ecrt_domain_received( ec_domain_t *domain );
Binary file 1.5.2-ESS0/3.14.12.5/lib/centos7-x86_64/libethercatlib.so matches
1.5.2-ESS0/3.15.4/include/ecrt.h:int ecrt_domain_received( ec_domain_t *domain );
Binary file 1.5.2-ESS0/3.15.4/lib/centos7-x86_64/libethercatlib.so matches
psi/3.14.12.5/include/ecrt.h:int ecrt_domain_received( ec_domain_t *domain );
Binary file psi/3.14.12.5/lib/centos7-x86_64/libethercatlib.so matches
psi/3.15.4/include/ecrt.h:int ecrt_domain_received( ec_domain_t *domain );
Binary file psi/3.15.4/lib/centos7-x86_64/libethercatlib.so matches


