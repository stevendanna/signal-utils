# This file is part of signal-utils.

# signal-utils is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# signal-utils is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with signal-utils.  If not, see <http://www.gnu.org/licenses/>.

module Signal
  
  # The built-in signame seems to get confused
  # with signo > 31, also add 'SIG' to the name
  def self.signame(signo)
    s = Signal::list.invert[signo]
    if s
      "SIG" + s
    else
      signo
    end
  end
  
  module Mask
    BITMASK = { 1 => 1, 2 => 2, 3 => 4, 4 => 8 }
    
    def self.decode(mask)
      ret = []
      i = 0
      mask.reverse.each_char do |c|
        BITMASK.each do |k,v|
          ret.push(k + i*4) if (c.to_i(base=16) & v) == v
        end
        i += 1
      end
      ret
    end
  end
end

