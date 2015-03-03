[![Build Status](https://travis-ci.org/treiff/pga_leaderboard.svg?branch=master)](https://travis-ci.org/treiff/pga_leaderboard)
# PGA Leaderboard
![Example](https://raw.githubusercontent.com/treiff/pga_leaderboard/master/img.png)

Ever wonder how the leaderboard is looking at the current PGA tour event?  Here's your answer.  A simple executable providing a brief overview of the current tournament, leaderboard automatically updates every 3-minutes.

Data is exracted from ESPN&reg; Bottomline as a URI encoded string. Default update from ESPN&reg; is every three minutes.

This was the best data feed I could find (for free) for PGA leaderboard data.  Feel free to mess around with it and make it better,  It does its job for now as long as ESPN&reg; doesn't change their data format. 

## Installation

Install it yourself as:

    $ gem install pga_leaderboard

## Usage

Simple, once installed run:

	$ pga leaderboard

To exit ```ctrl^c```

## Contributing

1. Fork it ( https://github.com/treiff/pga_leaderboard/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Copyright (c) 2015 Trevor Reiff

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
