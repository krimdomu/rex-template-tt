#
# (c) Jan Gehring <jan.gehring@gmail.com>
# 
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
   
package Rex::Template::TT;

use strict;
use warnings;

our $VERSION = "0.33.0";

use Template;

use Rex -base;

sub import {

   set template_function => sub {
      my ($content, $vars) = @_;
      my $t = Template->new;
      my $out;
      $t->process(\$content, $vars, \$out);
      return $out;
   };

}

1;
