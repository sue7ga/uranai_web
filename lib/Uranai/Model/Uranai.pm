package Uranai::Model::Uranai;
use Mouse;

has 'list' => (
   is => 'ro',
  isa => 'ArrayRef[Str]',
  default => sub{
       [qw/良いことが起こるでしょう
           出会いがあるかも？
           不幸になります
       /]
  }
);

sub uranau{
 my($self,$name) = @_;
 my $num = 0;
 $num += ord($_) for split//,$name;
 my $index = $num % scalar @{$self->list()};
 return $self->list->[$index];
}

__PACKAGE__->meta->make_immutable();
