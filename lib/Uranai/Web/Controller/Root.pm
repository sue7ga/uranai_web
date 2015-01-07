package Uranai::Web::Controller::Root;

use Data::Dumper;

sub index{
  my $self = shift;
  $self->render('index');
}

sub result{
 my $self = shift;
 my $name = $self->req->param('name'); 
 print Dumper $name;
 return $self->redirect_to('/') unless $name;
 my $uranai = Uranai::Model::Uranai->new;
 my $message = $uranai->uranau($name);
 $self->stash->{message} = $name;
 $self->render('result');
}



1;
