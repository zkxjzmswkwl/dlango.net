
module models;

import orm;
// needed for mixin.
import std.meta;
import std.array;
import std.sumtype;
import std.datetime;

struct Song {
  mixin Model!Song;

  string title;
  string artist;
  
  this (string title, string artist) {
    this.title = title;
    this.artist = artist;
  }
}

// Doesn't matter where you make your models, just register them here.
alias AllModels = AliasSeq!(Song);
