chapters = [['Chapter 1: Numbers',   'page 1'  ],
            ['Chapter 2: Letters',   'page 72' ],
            ['Chapter 3: Variables', 'page 118']]
line_width = 50
puts 'Table of Contents'.center(line_width)
puts ''
puts chapters[0][0].ljust(line_width/2) + chapters[0][1].rjust(line_width/2)
puts chapters[1][0].ljust(line_width/2) + chapters[1][1].rjust(line_width/2)
puts chapters[2][0].ljust(line_width/2) + chapters[2][1].rjust(line_width/2)