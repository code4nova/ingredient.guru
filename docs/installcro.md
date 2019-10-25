# Installing CRO on debian 10

## Install perl6/rakudo-star
There are some online instructions to do this. Often there is a package for it
on linux

## Install CRO
zef install cro will not work out on a new debian system. Digest::SHA1 will
fail to build because of three missing dependencies. 
The dependencies are as follows
* libssl-dev
* build-essential
* libffi6
* libffi-dev
* libuv1-dev
* libatomic-ops-dev
* libtommath-dev
 If these do not satisfy all dependencies, then look at what is missing in the
error. Next, look for the closest package debian has. 

After these dependencies are resolved zef install cro will run. It will do some
tests and after a few minutes will install. Next, fix the path by adding 

PATH "/home/cro/.perl6/bin:${PATH}"
export PATH 

to .bash_profile

CRO is now installed. Don't forget to install the other raku modules such as
Digest::SHA256::Native and DBIish for ingredient.guru.
