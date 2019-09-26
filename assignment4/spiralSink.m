## Copyright (C) 2019 byte33
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} spiralSink (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: byte33 <byte33@byte33s-shittop>
## Created: 2019-06-06

function yPrime = spiralSink(t,x)
  yPrime = [2*x(2)-x(1)-1; -2*x(1) - x(2) + 3];
end
